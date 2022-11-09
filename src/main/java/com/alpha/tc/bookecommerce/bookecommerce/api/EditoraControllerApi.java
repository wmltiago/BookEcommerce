package com.alpha.tc.bookecommerce.bookecommerce.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Editora;
import com.alpha.tc.bookecommerce.bookecommerce.repository.EditoraRepository;

@RestController
@RequestMapping("/api/bookstore/admin") /*torna padrão para todas uri esse trecho*/
public class EditoraControllerApi {
	
	@Autowired
	EditoraRepository editoraRepository;
	
	@GetMapping("/listarEditoras")
	public List<Editora> listaEditoras() {
		List<Editora> editora = editoraRepository.findAll(); 
		return editora;
	}
	
	@PostMapping("/formCadastroEditora")
	public void cadastrarEditora(@RequestBody Editora editora) {
        editoraRepository.save(editora);
        
    }	

}
