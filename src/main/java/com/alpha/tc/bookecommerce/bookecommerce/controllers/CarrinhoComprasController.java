package com.alpha.tc.bookecommerce.bookecommerce.controllers;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

import com.alpha.tc.bookecommerce.bookecommerce.component.CarrinhoCompras;
import com.alpha.tc.bookecommerce.bookecommerce.entity.Livro;
import com.alpha.tc.bookecommerce.bookecommerce.repository.LivroRepository;

@Controller
@Scope(value = WebApplicationContext.SCOPE_REQUEST)
public class CarrinhoComprasController {
	
	@Autowired
	LivroRepository LivroRepository;
	
	@Autowired
	CarrinhoCompras carrinhoCompras;
	
	@GetMapping("/carrinho")
	public ModelAndView carrinho(Livro livro) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("carrinho");
		modelAndView.addObject("livros", carrinhoCompras.getItens());
		modelAndView.addObject("totalCarrinho", carrinhoCompras.totalCarrinho());
		return modelAndView;
	}
	
	@GetMapping("/pagamento")
	public ModelAndView pagamento(Livro livro) {
		ModelAndView modelAndView = new ModelAndView("pagamento2");	
		modelAndView.addObject("totalCarrinho", carrinhoCompras.totalCarrinho());
		return modelAndView;
	}
	
	@GetMapping("/confirmacaoPg")
	public ModelAndView confirmacaoPg(Livro livro) {
		ModelAndView modelAndView = new ModelAndView("confirmacaoPg");		
		carrinhoCompras.clear();
		return modelAndView;
	}
	
		
	@GetMapping("/add/{id}")
	public ModelAndView adicionaLivro(@PathVariable Integer id, Livro l) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("carrinho");
		Optional<Livro> livro = LivroRepository.findById(id);
				
		if(livro.isPresent()) {
			carrinhoCompras.adicionaLivroCarrinho(livro.get());
		}		
		
		modelAndView.addObject("livros", carrinhoCompras.getItens());
		modelAndView.addObject("totalCarrinho", carrinhoCompras.totalCarrinho());
		return modelAndView;
	}
	
	@GetMapping("/delete/{id}")
	public ModelAndView excluirLivro(@PathVariable Integer id,Livro l) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("carrinho");
		Optional<Livro> livro = LivroRepository.findById(id);
		
		if(livro.isPresent()) {
			carrinhoCompras.remove(livro.get());
		}		
		modelAndView.addObject("livros", carrinhoCompras.getItens());
		modelAndView.addObject("totalCarrinho", carrinhoCompras.totalCarrinho());
		return modelAndView;
	}
	
	@PostMapping("/atualizar")
	public ModelAndView atualizarQuantidade(Integer idLivro, Integer quantidade,Livro livro) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("carrinho");
		Livro l = LivroRepository.getById(idLivro);
		carrinhoCompras.atualizaQtd(l, quantidade);		
		modelAndView.addObject("livros", carrinhoCompras.getItens());
		modelAndView.addObject("totalCarrinho", carrinhoCompras.totalCarrinho());
		return modelAndView;
	}
	
	

}
