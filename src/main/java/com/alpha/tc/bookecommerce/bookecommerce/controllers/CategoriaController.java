package com.alpha.tc.bookecommerce.bookecommerce.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Categoria;
import com.alpha.tc.bookecommerce.bookecommerce.repository.CategoriaRepository;
import com.alpha.tc.bookecommerce.bookecommerce.repository.CategoriaRepository;

@Controller
public class CategoriaController {
	
		@Autowired
		CategoriaRepository categoriaRepository;
		
					
		@GetMapping("/admin/cadastroCategoria")
		public ModelAndView cadastroCategoria(Categoria categoria) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("admin/formCadastroCategoria");
			return modelAndView;
		}
		
		@PostMapping
	    public ModelAndView cadastrarCategoria(Categoria categoria) {
	        ModelAndView modelAndView = new ModelAndView("admin/formCadastroCategoria");
	        categoriaRepository.save(categoria);
	        return modelAndView;
	    }
		
		@GetMapping("admin/listarCategorias")
		public ModelAndView listaCategorias(Categoria categoria) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("admin/listaCategorias");
			modelAndView.addObject("listaCategoriaes", categoriaRepository.findAll());
			return modelAndView;
		}
		
		@GetMapping("/inativarCategoria/{id1}")
		public ModelAndView inativarCategoria(@PathVariable("id1") Integer id444) {
			ModelAndView modelAndView = new ModelAndView("redirect:/admin/listarCategorias");
			Categoria categoria = categoriaRepository.findById(id444).get();
			categoria.setAtivoCategoria(false);
			categoriaRepository.save(categoria);
			return modelAndView;
		}
		
		@GetMapping("/ativarCategoria/{id1}")
		public ModelAndView ativarCategoria(@PathVariable("id1") Integer id444) {
			ModelAndView modelAndView = new ModelAndView("redirect:/admin/listarCategorias");
			Categoria categoria = categoriaRepository.findById(id444).get();
			categoria.setAtivoCategoria(true);
			categoriaRepository.save(categoria);
			return modelAndView;
		}

		@GetMapping("/editarCategoria/{id1}")
		public ModelAndView editarCategoria(@PathVariable("id1") Integer id444, Categoria categoria) {
			ModelAndView modelAndView = new ModelAndView("/admin/formEditarCategoria");
			Categoria categoriaEditado = categoriaRepository.getById(id444);
			modelAndView.addObject("categoriaNova", categoriaEditado);
			return modelAndView;
		}

		@PostMapping("/editarCategoria")
		public ModelAndView editarCategoriaPost(Categoria categoria) {
			ModelAndView modelAndView = new ModelAndView("redirect:admin/listarCategoriaes");/*aqui vc chama o uri de listar normal*/
			Categoria categoriaNova = categoriaRepository.getById(categoria.getIdCategoria());
			categoriaNova.setNomeCategoria(categoria.getNomeCategoria());		
			categoriaRepository.save(categoriaNova);
			return modelAndView;
		}

}
