package com.alpha.tc.bookecommerce.bookecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.alpha.tc.bookecommerce.bookecommerce.repository.LivroRepository;

@Controller
public class CarrinhoComprasController {
	
	@Autowired
	LivroRepository LivroRepository;
	
		
	@GetMapping("/adicionaLivroCarrinho/{id1}")
	public ModelAndView adicionaLivro(@PathVariable("id1") Integer id444) {
		ModelAndView modelAndView = new ModelAndView("carrinho");
		
		
		
		return modelAndView;
	}

}
