package com.alpha.tc.bookecommerce.bookecommerce.component;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Livro;

@Component
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
		if(livros.containsKey(livro)) {
			return 1;
		
		}else {
			return livros.get(livro);
		}
	}
	
	
	
	
}
