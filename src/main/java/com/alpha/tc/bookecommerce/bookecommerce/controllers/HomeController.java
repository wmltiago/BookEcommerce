package com.alpha.tc.bookecommerce.bookecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Autor;
import com.alpha.tc.bookecommerce.bookecommerce.entity.Livro;
import com.alpha.tc.bookecommerce.bookecommerce.repository.AutorRepository;
import com.alpha.tc.bookecommerce.bookecommerce.repository.CategoriaRepository;
import com.alpha.tc.bookecommerce.bookecommerce.repository.EditoraRepository;
import com.alpha.tc.bookecommerce.bookecommerce.repository.LivroRepository;

@RestController
public class HomeController {
	
	@Autowired
	CategoriaRepository categoriaRepository;
	
	@Autowired
	AutorRepository autorRepository;
	
	@Autowired
	EditoraRepository editoraRepository;
	
	@Autowired
	LivroRepository livroRepository;
	
	@GetMapping("/")
	public ModelAndView index(Livro livro) {
		ModelAndView modelAndView = new ModelAndView("index2");
		modelAndView.addObject("livros", livroRepository.findByDestaqueLivroTrue());		
		return modelAndView;
	}
	
	@PostMapping("/buscarPorTitulo")
	public ModelAndView buscarPorTitulo(Livro livro) {
		ModelAndView modelAndView = new ModelAndView("index2");
		modelAndView.addObject("livros", livroRepository.findByTituloLivroContainingIgnoreCase(livro.getTituloLivro()));
		return modelAndView;
	}
	
	@GetMapping("/listarLivrosShop")
	public ModelAndView listaLivros(Livro livro) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("shop");
		modelAndView.addObject("listaLivros", livroRepository.findAll());
		modelAndView.addObject("categorias", categoriaRepository.findAll());
		modelAndView.addObject("autores", autorRepository.findAll());
		modelAndView.addObject("editoras", editoraRepository.findAll());
		return modelAndView;
	}
	
	@PostMapping("/buscarPorTituloArcevo")
	public ModelAndView buscarPorTituloArcevo(Livro livro) {
		ModelAndView modelAndView = new ModelAndView("shop");
		modelAndView.addObject("listaLivrosArcevo", livroRepository.findByTituloLivroContainingIgnoreCase(livro.getTituloLivro()));
		return modelAndView;
	}
	
	@GetMapping("{id}")
	public ModelAndView buscarPorAutor(@PathVariable Integer id){
		ModelAndView modelAndView = new ModelAndView("shop");
		Autor autor =  autorRepository.findById(id).get();
		modelAndView.addObject("livros", livroRepository.findByAutor(autor));
		return modelAndView;
	}
	
	
	

}
