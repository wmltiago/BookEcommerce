package com.alpha.tc.bookecommerce.bookecommerce.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Autor;
import com.alpha.tc.bookecommerce.bookecommerce.repository.AutorRepository;


@Controller
public class AutorController {
	
	@Autowired
	AutorRepository autorRepository;
	
	@GetMapping("/")
	public String home(Autor autor) {
		return "admin/formCadastroLivro";
	}
	
		
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
	
	@GetMapping("/inativarAutor/{id1}")
	public ModelAndView inativarAutor(@PathVariable("id1") Integer id444) {
		ModelAndView modelAndView = new ModelAndView("redirect:/admin/listarAutores");
		Autor autor = autorRepository.findById(id444).get();
		autor.setStatusAutor(false);
		autorRepository.save(autor);
		return modelAndView;
	}
	
	@GetMapping("/ativarAutor/{id1}")
	public ModelAndView ativarAutor(@PathVariable("id1") Integer id444) {
		ModelAndView modelAndView = new ModelAndView("redirect:/admin/listarAutores");
		Autor autor = autorRepository.findById(id444).get();
		autor.setStatusAutor(true);
		autorRepository.save(autor);
		return modelAndView;
	}

	@GetMapping("/editarAutor/{id1}")
	public ModelAndView editarAutor(@PathVariable("id1") Integer id444, Autor autor) {
		ModelAndView modelAndView = new ModelAndView("/admin/formEditarAutor");
		Autor autorEditado = autorRepository.getById(id444);
		modelAndView.addObject("autorNovo", autorEditado);
		return modelAndView;
	}

	@PostMapping("/editarAutor")
	public ModelAndView editarAutorPost(Autor autor) {
		ModelAndView modelAndView = new ModelAndView("redirect:admin/listarAutores");/*aqui vc chama o uri de listar normal*/
		Autor autorNovo = autorRepository.getById(autor.getIdAutor());
		autorNovo.setNomeAutor(autor.getNomeAutor());		
		autorRepository.save(autorNovo);
		return modelAndView;
	}

}
