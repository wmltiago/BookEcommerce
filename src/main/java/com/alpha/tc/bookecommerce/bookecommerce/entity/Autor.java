package com.alpha.tc.bookecommerce.bookecommerce.entity;

public class Autor {
	private int idAutor;	
	private String nomeAutor;	
	private boolean ativoAutor;
	
	public int getIdAutor() {
		return idAutor;
	}
	public void setIdAutor(int idAutor) {
		this.idAutor = idAutor;
	}
	public String getnomeAutor() {
		return nomeAutor;
	}
	public void setnomeAutor(String nomeAutor) {
		this.nomeAutor = nomeAutor;
	}
	public boolean isAtivoAutor() {
		return ativoAutor;
	}
	public void setAtivoAutor(boolean ativoAutor) {
		this.ativoAutor = ativoAutor;
	}
	
	
	@Override
	public String toString() {
		return "Autor [idAutor=" + idAutor + ", nomeAutor=" + nomeAutor + ", ativoAutor=" + ativoAutor + "]";
	}
	
	
	public Autor(int idAutor, String nomeAutor, boolean ativoAutor) {
		super();
		this.idAutor = idAutor;
		this.nomeAutor = nomeAutor;
		this.ativoAutor = ativoAutor;
	}	
	

}
