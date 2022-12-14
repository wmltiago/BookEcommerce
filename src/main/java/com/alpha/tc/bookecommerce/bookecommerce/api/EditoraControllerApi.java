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

import com.alpha.tc.bookecommerce.bookecommerce.entity.Editora;
import com.alpha.tc.bookecommerce.bookecommerce.services.EditoraService;

@RestController
@RequestMapping("/api/bookstore/admin") /*torna padrão para todas uri esse trecho*/
public class EditoraControllerApi {
	
	@Autowired
	EditoraService editoraService;

	@GetMapping("/list")
	public List<Editora> list() {
		return editoraService.list();
	}

	@PostMapping("/create")
	public Editora create(@RequestBody Editora editora) {
		return editoraService.create(editora);
	}

	@PutMapping("/update/{id}")
	public Editora update(@PathVariable Integer id, @RequestBody Editora editora) {
		
		return editoraService.update(id, editora);
	}
	
	@DeleteMapping("/delete/{id}")
	public void delete(@PathVariable Integer id) {
		editoraService.delete(id);
	}

}
