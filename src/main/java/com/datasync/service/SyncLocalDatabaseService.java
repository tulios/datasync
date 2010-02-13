package com.datasync.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.datasync.models.IndexableEntity;
import com.datasync.processor.IndexProcessor;

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
			String strQuery = "from " + entityName + " where " + columnName + " not in (:ids) order by " + columnName;
			query = localEm.createQuery(strQuery);
			query.setParameter("ids", ids);
		}else{
			query = localEm.createQuery("from " + entityName + " order by " + columnName);
		}
		return query;
	}

	@SuppressWarnings("unchecked")
	private void sync(IndexProcessor processor, List<IndexableEntity> resultList){
		
		for(IndexableEntity entity: resultList){
			
			String entityName = entity.getShortClassName();
			String columnName = entity.getIdColumnName();
			
			//Verifica se ja existe no outro banco
			Query search = serverEm.createQuery("from " + entityName +" where " + columnName + " = :id");
			search.setParameter("id", entity.getIndexId());
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
		}
		
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public void execute() throws Exception {
		IndexProcessor processor = new IndexProcessor();

		for(IndexableEntity indexable : indexables){
			
			System.out.println("-> " + indexable.getFullClassName());
			Query query  = createQuery(processor, indexable);
			List<IndexableEntity> resultList = query.getResultList();

			System.out.println("ResultList: " + resultList.size());
			if (resultList.size() > 0){
				sync(processor, resultList);
				
			}else{
				System.out.println("Nothing to save");
			}
		}

	}

}
