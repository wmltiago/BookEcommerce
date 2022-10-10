package com.alpha.tc.bookecommerce.bookecommerce.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Autor;
import com.alpha.tc.bookecommerce.bookecommerce.repository.AutorRepository;

@Controller
public class EditoraController {

	@Autowired
	AutorRepository autorRepository;
	
	
	@GetMapping("admin/formularioCadastroAutor")
	public String formularioAutor(Autor Autor) {
		return "formularioCadastroAutor";
	}

	@GetMapping("/listaAutors2")
	public ModelAndView listaAutors(Autor Autor) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("listaAutors2");
		modelAndView.addObject("listaAutors2", autorRepository.findAll());
		return modelAndView;
	}

	@PostMapping
	public String cadastroAutor(@Valid Autor Autor, BindingResult result,
			RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			
			return home(Autor);
		}
		redirectAttributes.addFlashAttribute("mensagem", "Usuário cadastrado com sucesso!!");
		System.out.println(Autor);
		autorRepository.save(Autor);
		return "redirect:/formulario";

	}

	@GetMapping("/excluirAutor/{id1}")
	public ModelAndView excluirAutor(@PathVariable("id1") Integer id444) {
		ModelAndView modelAndView = new ModelAndView("redirect:/listaAutors2");
		Autor Autor = autorRepository.findById(id444).get();
		autorRepository.delete(Autor);
		return modelAndView;
	}

	@GetMapping("/editarAutor/{id1}")
	public ModelAndView editarAutor(@PathVariable("id1") Integer id444, Autor Autor) {
		ModelAndView modelAndView = new ModelAndView("editarAutor2");
		Autor Autor1 = autorRepository.getById(id444);
		modelAndView.addObject("AutorNova", Autor1);
		return modelAndView;
	}

	@PostMapping("/editarAutor")
	public ModelAndView editarAutorPost(MultipartFile imagem1, Autor Autor) {
		ModelAndView modelAndView = new ModelAndView("redirect:/listaAutors2");
		Autor Autor1 = autorRepository.getById(Autor.getIdAutor());
		Autor1.setNome(Autor.getNome());
		Autor1.setIdade(Autor.getIdade());		
		autorRepository.save(Autor1);
		return modelAndView;
	}
}
