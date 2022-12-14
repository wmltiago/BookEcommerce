package com.alpha.tc.bookecommerce.bookecommerce.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Autor;
import com.alpha.tc.bookecommerce.bookecommerce.services.AutorService;

@RestController
@RequestMapping("/api/bookstore/admin") /*torna padrão para todas uri esse trecho*/
public class AutorControllerApi {
	
		
	@Autowired
	AutorService autorService;

	@GetMapping("/list")
	public List<Autor> list() {
		return autorService.findAll();
	}

	@PostMapping("/create")
	public Autor create(@RequestBody Autor autor) {
		return autorService.create(autor);
	}

	@PutMapping("/update/{id}")
	public Autor update(@PathVariable Integer id, @RequestBody Autor autor) {
		return autorService.update(id, autor);
	}
	
	@DeleteMapping("/delete/{id}")
	public void delete(@PathVariable Integer id) {
		autorService.delete(id);
	}

}
