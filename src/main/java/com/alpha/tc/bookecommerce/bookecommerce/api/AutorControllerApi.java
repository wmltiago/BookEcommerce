package com.alpha.tc.bookecommerce.bookecommerce.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Autor;
import com.alpha.tc.bookecommerce.bookecommerce.repository.AutorRepository;

@RestController
@RequestMapping("/api/bookstore/admin") /*torna padrão para todas uri esse trecho*/
public class AutorControllerApi {
	
	@Autowired
	AutorRepository autorRepository;
	
	@GetMapping("/listarAutors")
	public List<Autor> listaAutors() {
		List<Autor> autor = autorRepository.findAll(); 
		return autor;
	}
	
	@PostMapping("/formCadastroAutor")
	public void cadastrarAutor(@RequestBody Autor autor) {
        autorRepository.save(autor);
        
    }	

}
