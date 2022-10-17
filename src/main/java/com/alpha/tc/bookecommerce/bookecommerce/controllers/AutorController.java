package com.alpha.tc.bookecommerce.bookecommerce.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Autor;
import com.alpha.tc.bookecommerce.bookecommerce.repository.AutorRepository;


@Controller
public class AutorController {
	
	@Autowired
	AutorRepository autorRepository;
	
	@GetMapping("/")
	public String home(Autor autor) {
		return "index";
	}
	
	/*@GetMapping("admin/cadastroAutor")
	public String formularioPessoa(Autor autor) {
		return "/admin/formCadastroAutor";
	} */
	
	@GetMapping("/admin/cadastroAutor")
	public ModelAndView cadastroAutor(Autor autor) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/formCadastroAutor");
		return modelAndView;
	}
	
	@PostMapping
    public ModelAndView cadastrarAutor(Autor autor) {
        ModelAndView modelAndView = new ModelAndView("admin/formCadastroAutor");
        autorRepository.save(autor);
        return modelAndView;
    }
	
	@GetMapping("admin/listarAutores")
	public ModelAndView listaAutores(Autor autor) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/listaAutores");
		modelAndView.addObject("listaAutores", autorRepository.findAll());
		return modelAndView;
	}

}
