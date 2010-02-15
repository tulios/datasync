package com.datasync.processor;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;

import com.datasync.Main;
import com.datasync.models.IndexableEntity;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

public class IndexProcessor {

	private static Logger log = Logger.getLogger(IndexProcessor.class);
	
	public static final String INDEX_FILE = "resources/indexes.xml";

	private void saveXML(XStream xstream, List<Index> lista) throws IOException{
		//Elimina os repetidos
		Set<Index> set = new HashSet<Index>(lista);
		List<Index> uniqueList = new ArrayList<Index>(set);
		Collections.sort(uniqueList);
		
		FileOutputStream fos = new FileOutputStream(getFile());
		String xml = xstream.toXML(uniqueList);
		fos.write(xml.getBytes());
		fos.flush();
		fos.close();
	}

	public File getFile(){
		return new File(INDEX_FILE);
	}
	
	@SuppressWarnings("unchecked")
	public List<Index> getList(){
		XStream xstream = new XStream(new DomDriver());
		List<Index> lista = new ArrayList<Index>();

		try {
			if (!getFile().exists()){
				Main.createDir();
				saveXML(xstream, lista);
				return lista;
			}

			FileInputStream fis = new FileInputStream(getFile());
			lista = (List<Index>) xstream.fromXML(fis);

		} catch (IOException e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}

		return lista;
	}

	public List<String> getIdsList(String className){
		List<Index> list = getList();
		List<String> ids = new ArrayList<String>();
		for(Index index : list){
			if (index.getClassName().equals(className)){
				ids.add(index.getId());
			}
		}
		return ids;
	}
	
	public void save(IndexableEntity indexableEntity){
		List<Index> lista = getList();
		lista.add(new Index(indexableEntity.getFullClassName(), indexableEntity.getIndexId()));

		XStream xstream = new XStream(new DomDriver());
		try {
			saveXML(xstream, lista);
		} catch (IOException e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
	}
	
	public Index getLast(String className){
		List<Index> partialList = new ArrayList<Index>();
		
		for(Index index : getList()){
			if (index.getClassName().equals(className)){
				partialList.add(index);
			}
		}
		
		Collections.sort(partialList);
		return partialList.get(partialList.size() - 1);
	}

}




















