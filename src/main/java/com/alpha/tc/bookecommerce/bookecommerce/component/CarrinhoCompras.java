package com.alpha.tc.bookecommerce.bookecommerce.component;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Livro;

@Component
@Scope(value = WebApplicationContext.SCOPE_SESSION)
public class CarrinhoCompras {
	Map<Livro, Integer> livros = new LinkedHashMap<>();

	public Collection<Livro> getItens() { //Collection is native
		return livros.keySet();
	}
	
	public void adicionaLivroCarrinho(Livro criaLivro) {
		livros.put(criaLivro, getQuantidade(criaLivro));
	}

	private Integer getQuantidade(Livro criaLivro) {
		if(!livros.containsKey(criaLivro))
		return 1;
			else
				return livros.get(criaLivro)+1;
	}
	
	public int getQuantidadeTela(Livro livro) {
		if(!livros.containsKey(livro)) {
			return 1;
		
		}else {
			return livros.get(livro);
		}
	}

	public void remove(Livro livro) {
		livros.remove(livro);
		
	}

	public void atualizaQtd(Livro l, Integer quantidade) {
		livros.put(l, quantidade);
		
	}
	
	public Double totalCarrinho() {
		double total = 0;
		for (Livro item : livros.keySet()) {			
			total += item.getPrecoLivro() * getQuantidadeTela(item);			
		}
		return total;
	}
	
		
	public void clear() {
		livros.clear();
	}
	
}
