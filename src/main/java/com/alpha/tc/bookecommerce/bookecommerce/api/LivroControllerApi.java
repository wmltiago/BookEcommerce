package com.alpha.tc.bookecommerce.bookecommerce.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Livro;
import com.alpha.tc.bookecommerce.bookecommerce.repository.LivroRepository;

@RestController
@RequestMapping("/api/bookstore/admin") /*torna padrão para todas uri esse trecho*/
public class LivroControllerApi {
	
//	@Autowired
//	LivroRepository livroRepository;
//	
//	@GetMapping("/listarLivros")
//	public List<Livro> listaLivros() {
//		List<Livro> livro = livroRepository.findAll(); 
//		return livro;
//	}
//	
//	@PostMapping("/formCadastroLivro")
//	public void cadastrarLivro(@RequestBody Livro livro) {
//        livroRepository.save(livro);
//        
//    }	

}
