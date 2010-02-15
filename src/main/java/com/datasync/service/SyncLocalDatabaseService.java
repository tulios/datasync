package com.datasync.service;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.swing.SwingUtilities;

import com.datasync.Main;
import com.datasync.models.IndexableEntity;
import com.datasync.processor.IndexProcessor;
import com.datasync.ui.MainFrame;

public class SyncLocalDatabaseService implements IService {

	private EntityManager localEm;
	private EntityManager serverEm;

	private List<IndexableEntity> indexables;

	public SyncLocalDatabaseService(List<IndexableEntity> indexables){
		this.indexables = indexables;
	}

	public void setIndexables(List<IndexableEntity> indexables) {
		this.indexables = indexables;
	}

	@Override
	public void setEntityManagers(EntityManager localEm, EntityManager serverEm) {
		this.localEm = localEm;
		this.serverEm = serverEm;
	}

	private Query createQuery(IndexProcessor processor, IndexableEntity indexable){
		// pegar id list pela classe
		List<String> ids = processor.getIdsList(indexable.getFullClassName());
		String entityName = indexable.getShortClassName();
		String columnName = indexable.getIdColumnName();

		Query query  = null;
		if (ids != null && ids.size() > 0){

			if (indexable.isCompoundKey()){
				String compoundName = indexable.getCompoundIdColumnName();
				String strQuery = "from " + entityName + " where " + columnName + " not in (:ids) " +
								  "and " + compoundName + " not in (:compoundIds) order by " + columnName;
				
				List<String> pkId = new ArrayList<String>();
				List<String> compoundId = new ArrayList<String>();
				
				for (String id : ids) {
					String[] parts = id.split("#");
					pkId.add(parts[0]);
					compoundId.add(parts[1]);
				}
				
				Set<String> set = new HashSet<String>(pkId);
				List<String> uniquePkId = new ArrayList<String>(set);
				Collections.sort(uniquePkId);
				
				set = new HashSet<String>(compoundId);
				List<String> uniqueCompoundId = new ArrayList<String>(set);
				Collections.sort(uniqueCompoundId);
				
				query = localEm.createQuery(strQuery);
				query.setParameter("ids", uniquePkId);
				query.setParameter("compoundIds", uniqueCompoundId);
				
			} else {
				String strQuery = "from " + entityName + " where " + columnName + " not in (:ids) order by " + columnName;
				query = localEm.createQuery(strQuery);
				query.setParameter("ids", ids);
			}


		}else{
			query = localEm.createQuery("from " + entityName + " order by " + columnName);
		}
		return query;
	}

	@SuppressWarnings("unchecked")
	private void sync(IndexProcessor processor, List<IndexableEntity> resultList) throws Exception {

		int index = 0;
		for(IndexableEntity entity: resultList){

			String entityName = entity.getShortClassName();
			String columnName = entity.getIdColumnName();

			//Verifica se ja existe no outro banco
			Query search = null;
			if (entity.isCompoundKey()){
				
				String compoundName = entity.getCompoundIdColumnName();
				
				search = serverEm.createQuery("from " + entityName +" where " + columnName   + " = :id and " + 
																			    compoundName + " = :compoundId");
				String[] ids = entity.getIndexId().split("#");
				search.setParameter("id", ids[0]);
				search.setParameter("compoundId", ids[1]);
				
			}else{
				search = serverEm.createQuery("from " + entityName +" where " + columnName + " = :id");
				search.setParameter("id", entity.getIndexId());
			}
			List<IndexableEntity> searchResult = search.getResultList();

			if (searchResult != null && searchResult.size() > 0){
				processor.save(entity);
				System.out.println("Registro " + entity.getIndexId() + " ja existe.");

			}else{
				System.out.println("Saving id: " + entity.getIndexId());
				//Caso nao exista, salva la
				serverEm.persist(entity);
				// Salva no xml para marcar como ja realizado
				processor.save(entity);
				System.out.println("saved");
			}
			
			index++;
			atualizarProgressBar(index, resultList.size());
		}

	}

	private void atualizarProgressBar(final int index, final int total) throws InterruptedException, InvocationTargetException{
		SwingUtilities.invokeAndWait(new Runnable() {
			@Override
			public void run() {
				int percent = Main.getPorcentagemAtual(index, total);
				MainFrame.getInstance().setProgressBarValue(percent);
			}
		});
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public void execute() throws Exception {
		IndexProcessor processor = new IndexProcessor();

		for(IndexableEntity indexable : indexables){
			MainFrame.getInstance().setMensagem("Sincronizando " + indexable.getShortClassName());
			System.out.println("-> " + indexable.getFullClassName());
			
			// Para manter a barra em 0% enquanto não começa o processo
			atualizarProgressBar(0, 1);
			
			Query query  = createQuery(processor, indexable);
			List<IndexableEntity> resultList = query.getResultList();

			System.out.println("ResultList: " + resultList.size());
			if (resultList.size() > 0){
				sync(processor, resultList);
				
			}else{
				MainFrame.getInstance().setMensagem(indexable.getShortClassName() + " já está sincronizado");
				atualizarProgressBar(1, 1);
				
				System.out.println("Nothing to save");
			}
		}
		
		// Para manter a barra em 100% quando tudo acabar
		atualizarProgressBar(1, 1);
	}

}
