package com.alpha.tc.bookecommerce.bookecommerce.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Categoria;
import com.alpha.tc.bookecommerce.bookecommerce.repository.CategoriaRepository;

@RestController
@RequestMapping("/api/bookstore/admin") /*torna padrão para todas uri esse trecho*/
public class CategoriaControllerApi {
	
	@Autowired
	CategoriaRepository categoriaRepository;
	
	@GetMapping("/listarCategorias")
	public List<Categoria> listaCategorias() {
		List<Categoria> categoria = categoriaRepository.findAll(); 
		return categoria;
	}
	
	@PostMapping("/formCadastroCategoria")
	public void cadastrarCategoria(@RequestBody Categoria categoria) {
        categoriaRepository.save(categoria);
        
    }	
}
