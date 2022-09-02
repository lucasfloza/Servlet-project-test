package br.com.alura.gerenciador.servlet;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


/**
*	This class is the database simulation, where it will be used to simulate
*	data manipulation with a database.
**/
public class Banco {
	
	private static List<Empresa> lista = new ArrayList<>();
	private static Integer key = 1;
	
	
	public List<Empresa> getEmpresas(){
		return Banco.lista;
	}
	
	/**Method used to add the company**/
	public void adiciona(Empresa empresa) {
		empresa.setId(Banco.key++);
		Banco.lista.add(empresa);	
	}
	/**Method used to remove the company**/
	public void removeEmpresas(Integer id) {
	   
		Iterator<Empresa> it = lista.iterator();
	    while(it.hasNext()) { 
	        Empresa emp = it.next();

	        if(emp.getId() == id ) {
	            it.remove();
	        }
	    }
	}
	/**Method used to search for a company by the id code**/
	public Empresa buscaEmpresaPelaId(Integer id) { 
	    for (Empresa empresa: lista) { 
	        if(empresa.getId() == id)  {
	            return empresa;
	        }
	    }
	    return null;
	}
}
