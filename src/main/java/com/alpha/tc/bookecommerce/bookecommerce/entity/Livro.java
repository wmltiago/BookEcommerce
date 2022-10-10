package com.alpha.tc.bookecommerce.bookecommerce.entity;

public class Livro {
	private Integer idLivro;
	private String tituloLivro;
	private Integer numPaginas;
	private Autor autorLivro;
	private Editora editora;
	private String fotoLivro;
	private double precoLivro;
	private Categoria categoriaLivro;
	private boolean destaque;
	private boolean ativo;
	
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
		return editora;
	}
	public void setEditora(Editora editora) {
		this.editora = editora;
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
	public boolean isDestaque() {
		return destaque;
	}
	public void setDestaque(boolean destaque) {
		this.destaque = destaque;
	}
	public boolean isAtivo() {
		return ativo;
	}
	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}
	
	@Override
	public String toString() {
		return "Livro [idLivro=" + idLivro + ", tituloLivro=" + tituloLivro + ", numPaginas=" + numPaginas
				+ ", autorLivro=" + autorLivro + ", editora=" + editora + ", fotoLivro=" + fotoLivro + ", precoLivro="
				+ precoLivro + ", categoriaLivro=" + categoriaLivro + ", destaque=" + destaque + ", ativo=" + ativo
				+ "]";
	}
	
	
	public Livro(Integer idLivro, String tituloLivro, Integer numPaginas, Autor autorLivro, Editora editora,
			String fotoLivro, double precoLivro, Categoria categoriaLivro, boolean destaque, boolean ativo) {
		super();
		this.idLivro = idLivro;
		this.tituloLivro = tituloLivro;
		this.numPaginas = numPaginas;
		this.autorLivro = autorLivro;
		this.editora = editora;
		this.fotoLivro = fotoLivro;
		this.precoLivro = precoLivro;
		this.categoriaLivro = categoriaLivro;
		this.destaque = destaque;
		this.ativo = ativo;
	}
	
	

}
