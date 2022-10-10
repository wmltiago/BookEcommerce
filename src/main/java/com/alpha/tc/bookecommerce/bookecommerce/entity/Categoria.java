package com.alpha.tc.bookecommerce.bookecommerce.entity;

public class Categoria {
	
	private Integer idCategoria;
	private String nomeCategoria;
	private String descricaoCategoria;
	private boolean ativoCategoria;
	
	public int getIdCategoria() {
		return idCategoria;
	}
	public void setIdCategoria(Integer idCategoria) {
		this.idCategoria = idCategoria;
	}
	public String getNomeCategoria() {
		return nomeCategoria;
	}
	public void setNomeCategoria(String nomeCategoria) {
		this.nomeCategoria = nomeCategoria;
	}
	public String getDescricaoCategoria() {
		return descricaoCategoria;
	}
	public void setDescricaoCategoria(String descricaoCategoria) {
		this.descricaoCategoria = descricaoCategoria;
	}
	public boolean isAtivoCategoria() {
		return ativoCategoria;
	}
	public void setAtivoCategoria(boolean ativoCategoria) {
		this.ativoCategoria = ativoCategoria;
	}
	
	@Override
	public String toString() {
		return "Categoria [idCategoria=" + idCategoria + ", nomeCategoria=" + nomeCategoria + ", descricaoCategoria="
				+ descricaoCategoria + ", ativoCategoria=" + ativoCategoria + "]";
	}
	
	public Categoria(Integer idCategoria, String nomeCategoria, String descricaoCategoria, boolean ativoCategoria) {
		super();
		this.idCategoria = idCategoria;
		this.nomeCategoria = nomeCategoria;
		this.descricaoCategoria = descricaoCategoria;
		this.ativoCategoria = ativoCategoria;
	}
	

}
