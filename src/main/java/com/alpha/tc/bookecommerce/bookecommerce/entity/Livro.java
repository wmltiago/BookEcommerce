package com.alpha.tc.bookecommerce.bookecommerce.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Livro {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer idLivro;
	private String tituloLivro;
	private Integer numPaginas;
	@OneToOne
	private Autor autorLivro;
	@OneToOne
	private Editora editoraLivro;
	private String fotoLivro;
	private double precoLivro;
	@OneToOne
	private Categoria categoriaLivro;
	private boolean destaqueLivro=true;
	private boolean ativoLivro=true;
	
	
	
	public Integer getIdLivro() {
		return idLivro;
	}



	public void setIdLivro(Integer idLivro) {
		this.idLivro = idLivro;
	}



	public String getTituloLivro() {
		return tituloLivro;
	}



	public void setTituloLivro(String tituloLivro) {
		this.tituloLivro = tituloLivro;
	}



	public Integer getNumPaginas() {
		return numPaginas;
	}



	public void setNumPaginas(Integer numPaginas) {
		this.numPaginas = numPaginas;
	}



	public Autor getAutorLivro() {
		return autorLivro;
	}



	public void setAutorLivro(Autor autorLivro) {
		this.autorLivro = autorLivro;
	}



	public Editora getEditora() {
		return editoraLivro;
	}



	public void setEditora(Editora editora) {
		this.editoraLivro = editora;
	}



	public String getFotoLivro() {
		return fotoLivro;
	}



	public void setFotoLivro(String fotoLivro) {
		this.fotoLivro = fotoLivro;
	}



	public double getPrecoLivro() {
		return precoLivro;
	}



	public void setPrecoLivro(double precoLivro) {
		this.precoLivro = precoLivro;
	}



	public Categoria getCategoriaLivro() {
		return categoriaLivro;
	}



	public void setCategoriaLivro(Categoria categoriaLivro) {
		this.categoriaLivro = categoriaLivro;
	}



	public boolean isDestaqueLivro() {
		return destaqueLivro;
	}



	public void setDestaqueLivro(boolean destaqueLivro) {
		this.destaqueLivro = destaqueLivro;
	}



	public boolean isAtivoLivro() {
		return ativoLivro;
	}



	public void setAtivoLivro(boolean ativoLivro) {
		this.ativoLivro = ativoLivro;
	}
	
	public Livro(Integer idLivro, String tituloLivro, Integer numPaginas, Autor autorLivro, Editora editoraLivro,
			String fotoLivro, double precoLivro, Categoria categoriaLivro, boolean destaqueLivro, boolean ativoLivro) {
		super();
		this.idLivro = idLivro;
		this.tituloLivro = tituloLivro;
		this.numPaginas = numPaginas;
		this.autorLivro = autorLivro;
		this.editoraLivro = editoraLivro;
		this.fotoLivro = fotoLivro;
		this.precoLivro = precoLivro;
		this.categoriaLivro = categoriaLivro;
		this.destaqueLivro = destaqueLivro;
		this.ativoLivro = ativoLivro;
	}

	

	@Override
	public String toString() {
		return "Livro [idLivro=" + idLivro + ", tituloLivro=" + tituloLivro + ", numPaginas=" + numPaginas
				+ ", autorLivro=" + autorLivro + ", editoraLivro=" + editoraLivro + ", fotoLivro=" + fotoLivro
				+ ", precoLivro=" + precoLivro + ", categoriaLivro=" + categoriaLivro + ", destaqueLivro="
				+ destaqueLivro + ", ativoLivro=" + ativoLivro + "]";
	}



	public Livro() {}

}
