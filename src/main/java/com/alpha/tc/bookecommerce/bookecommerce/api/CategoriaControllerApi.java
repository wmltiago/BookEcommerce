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

import com.alpha.tc.bookecommerce.bookecommerce.entity.Categoria;
import com.alpha.tc.bookecommerce.bookecommerce.services.CategoriaService;

@RestController
@RequestMapping("/api/bookstore/admin") /*torna padrão para todas uri esse trecho*/
public class CategoriaControllerApi {
	
	@Autowired
	CategoriaService categoriaService;
	
	@GetMapping("/list")
	public List<Categoria> list() {
		return categoriaService.list();
	}
	
	@PostMapping("/create")
	public Categoria create(@RequestBody Categoria body) {
		return categoriaService.create(body);
	}
	
	@PutMapping("/update/{id}")
	public Categoria update(@PathVariable Integer id, @RequestBody Categoria body)
	{
		return categoriaService.update(id, body);
	}
	
	@DeleteMapping("/delete/{id}")
	public void delete(@PathVariable Integer id)
	{
		categoriaService.delete(id);
	}
}
