package com.alpha.tc.bookecommerce.bookecommerce.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Autor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer idAutor;	
	
	private String nomeAutor;
	
	private boolean statusAutor=true;

	
	
	public Integer getIdAutor() {
		return idAutor;
	}


	public void setIdAutor(Integer idAutor) {
		this.idAutor = idAutor;
	}


	public String getNomeAutor() {
		return nomeAutor;
	}


	public void setNomeAutor(String nomeAutor) {
		this.nomeAutor = nomeAutor;
	}


	public boolean getStatusAutor() {
		return statusAutor;
	}


	public void setStatusAutor(boolean statusAutor) {
		this.statusAutor = statusAutor;
	}


	public Autor() {
		
	}


	@Override
	public String toString() {
		return "Autor [idAutor=" + idAutor + ", nomeAutor=" + nomeAutor + ", statusAutor=" + statusAutor + "]";
	}	


	public Autor(Integer idAutor, String nomeAutor, boolean statusAutor) {
		super();
		this.idAutor = idAutor;
		this.nomeAutor = nomeAutor;
		this.statusAutor = statusAutor;
	}
		
	

}
