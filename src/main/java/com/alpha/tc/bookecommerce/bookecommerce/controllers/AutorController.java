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
public class AutorController {
	
	@Autowired
	AutorRepository autorRepository;
	
	
	@GetMapping("admin/formularioCadastroAutor")
	public String formularioAutor(Autor autor) {
		return "formularioCadastroAutor";
	}

	@GetMapping("/listaAutores")
	public ModelAndView listaAutors(Autor autor) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("listaAutors2");
		modelAndView.addObject("listaAutors2", autorRepository.findAll());
		return modelAndView;
	}

	@PostMapping
	public String cadastroAutor(@Valid Autor autor, BindingResult result,
			RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			
			return home(autor); //adicionar a pagina de retorno em caso de erro.
		}
		redirectAttributes.addFlashAttribute("mensagem", "Usuário cadastrado com sucesso!!");
		System.out.println(autor);
		autorRepository.save(autor);
		return "redirect:/formulario";

	}

	@GetMapping("/excluirAutor/{id1}")
	public ModelAndView excluirAutor(@PathVariable("id1") Integer id444) {
		ModelAndView modelAndView = new ModelAndView("redirect:/listaAutors2");
		Autor autor = autorRepository.findById(id444).get();
		autorRepository.delete(autor);
		return modelAndView;
	}

	@GetMapping("/editarAutor/{id1}")
	public ModelAndView editarAutor(@PathVariable("id1") Integer id444, Autor autor) {
		ModelAndView modelAndView = new ModelAndView("editarAutor2");
		Autor autor1 = autorRepository.getById(id444);
		modelAndView.addObject("AutorNova", autor1);
		return modelAndView;
	}

	@PostMapping("/editarAutor")
	public ModelAndView editarAutorPost(Autor autor) {
		ModelAndView modelAndView = new ModelAndView("redirect:/listaAutors2");
		Autor autor1 = autorRepository.getById(autor.getIdAutor());
		autor1.setnomeAutor(autor.getnomeAutor());
		autor1.setAtivoAutor(autor.isAtivoAutor());		
		autorRepository.save(autor1);
		return modelAndView;
	}

}
