package com.alpha.tc.bookecommerce.bookecommerce.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Editora {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer idEditora;
	
	private String nomeEditora;
	private String descricaoEditora;
	private boolean ativoEditora= true;
	
	
	
	
	public Integer getIdEditora() {
		return idEditora;
	}




	public void setIdEditora(Integer idEditora) {
		this.idEditora = idEditora;
	}




	public String getNomeEditora() {
		return nomeEditora;
	}




	public void setNomeEditora(String nomeEditora) {
		this.nomeEditora = nomeEditora;
	}




	public String getDescricaoEditora() {
		return descricaoEditora;
	}




	public void setDescricaoEditora(String descricaoEditora) {
		this.descricaoEditora = descricaoEditora;
	}




	public boolean isAtivoEditora() {
		return ativoEditora;
	}




	public void setAtivoEditora(boolean ativoEditora) {
		this.ativoEditora = ativoEditora;
	}

	



	public Editora(Integer idEditora, String nomeEditora, String descricaoEditora, boolean ativoEditora) {
		super();
		this.idEditora = idEditora;
		this.nomeEditora = nomeEditora;
		this.descricaoEditora = descricaoEditora;
		this.ativoEditora = ativoEditora;
	}

	



	@Override
	public String toString() {
		return "Editora [idEditora=" + idEditora + ", nomeEditora=" + nomeEditora + ", descricaoEditora="
				+ descricaoEditora + ", ativoEditora=" + ativoEditora + "]";
	}




	public Editora() {}
		
	
}
