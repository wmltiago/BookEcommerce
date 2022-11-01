package com.alpha.tc.bookecommerce.bookecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Livro;
import com.alpha.tc.bookecommerce.bookecommerce.repository.AutorRepository;
import com.alpha.tc.bookecommerce.bookecommerce.repository.CategoriaRepository;
import com.alpha.tc.bookecommerce.bookecommerce.repository.EditoraRepository;
import com.alpha.tc.bookecommerce.bookecommerce.repository.LivroRepository;

@Controller
public class LivroController  {

	@Autowired
	LivroRepository livroRepository;
	@Autowired
	CategoriaRepository categoriaRepository;
	@Autowired
	AutorRepository autorRepository;
	@Autowired
	EditoraRepository editoraRepository;
	
				
	@GetMapping("/admin/cadastroLivro")
	public ModelAndView cadastroLivro(Livro livro) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/formCadastroLivro");
		modelAndView.addObject("categorias", categoriaRepository.findAll());
		modelAndView.addObject("autores", autorRepository.findAll());
		modelAndView.addObject("editoras", editoraRepository.findAll());
		return modelAndView;
	}
	
	@PostMapping("admin/formCadastroLivro")
    public ModelAndView cadastrarLivro(Livro livro) {
        ModelAndView modelAndView = new ModelAndView("admin/formCadastroLivro");
        livroRepository.save(livro);
        return modelAndView;
    }		
	
	@GetMapping("admin/listarLivros")
	public ModelAndView listaLivros(Livro livro) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/listaLivros");
		modelAndView.addObject("listaLivros", livroRepository.findAll());
		return modelAndView;
	}
	
	@GetMapping("/inativarLivro/{id1}")
	public ModelAndView inativarLivro(@PathVariable("id1") Integer id444) {
		ModelAndView modelAndView = new ModelAndView("redirect:/admin/listarLivros");
		Livro livro = livroRepository.findById(id444).get();
		livro.setAtivoLivro(false);
		livroRepository.save(livro);
		return modelAndView;
	}
	
	@GetMapping("/ativarLivro/{id1}")
	public ModelAndView ativarLivro(@PathVariable("id1") Integer id444) {
		ModelAndView modelAndView = new ModelAndView("redirect:/admin/listarLivros");
		Livro livro = livroRepository.findById(id444).get();
		livro.setAtivoLivro(true);
		livroRepository.save(livro);
		return modelAndView;
	}

	@GetMapping("/editarLivro/{id1}")
	public ModelAndView editarLivro(@PathVariable("id1") Integer id444, Livro livro) {
		ModelAndView modelAndView = new ModelAndView("/admin/formEditarLivro");
		Livro livroEditado = livroRepository.getById(id444);
		modelAndView.addObject("livroNova", livroEditado);
		return modelAndView;
	}

	@PostMapping("/editarLivro")
	public ModelAndView editarLivroPost(Livro livro) {
		ModelAndView modelAndView = new ModelAndView("redirect:admin/listarLivros");/*aqui vc chama o uri de listar normal*/
		Livro livroNovo = livroRepository.getById(livro.getIdLivro());
		livroNovo.setTituloLivro(livro.getTituloLivro());		
		livroRepository.save(livroNovo);
		return modelAndView;
	}
}
