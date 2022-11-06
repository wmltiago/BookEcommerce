package com.alpha.tc.bookecommerce.bookecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Livro;
import com.alpha.tc.bookecommerce.bookecommerce.infra.FileSaver;
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
	@Autowired
	FileSaver fileSaver;
	
				
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
	public String cadastrarLivro(MultipartFile imagem1,Livro livro, BindingResult result, 
			RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("mensagem", "Usuário cadastrado com sucesso!!");
		String path = fileSaver.write("arquivo-foto", imagem1);
		livro.setFotoLivro(path);		
		livroRepository.save(livro);
		return "redirect:/admin/cadastroLivro";

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
	
	@GetMapping("/naoDestaqueLivro/{id1}")
	public ModelAndView naoDestaqueLivro(@PathVariable("id1") Integer id444) {
		ModelAndView modelAndView = new ModelAndView("redirect:/admin/listarLivros");
		Livro livro = livroRepository.findById(id444).get();
		livro.setDestaqueLivro(false);
		livroRepository.save(livro);
		return modelAndView;
	}
	
	@GetMapping("/destaqueLivro/{id1}")
	public ModelAndView destaqueLivro(@PathVariable("id1") Integer id444) {
		ModelAndView modelAndView = new ModelAndView("redirect:/admin/listarLivros");
		Livro livro = livroRepository.findById(id444).get();
		livro.setDestaqueLivro(true);
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

//	@PostMapping("/editarLivro")
//	public ModelAndView editarPessoaPost(MultipartFile imagem1, Pessoa pessoa) {
//		ModelAndView modelAndView = new ModelAndView("redirect:/listaPessoas2");
//		Pessoa pessoa1 = pessoaRepository.getById(pessoa.getId());
//		pessoa1.setNome(pessoa.getNome());
//		pessoa1.setIdade(pessoa.getIdade());
//		
//		if (imagem1 != null) {
//			fileSaver.remove(pessoa1.getFoto());
//			System.out.println(pessoa1.getFoto());
//			String path = fileSaver.write("arquivo-foto", imagem1);
//			pessoa1.setFoto(path);
//		}		
//		
//		pessoaRepository.save(pessoa1);
//		return modelAndView;
//	}
}
