package com.alpha.tc.bookecommerce.bookecommerce.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Livro;
import com.alpha.tc.bookecommerce.bookecommerce.repository.LivroRepository;

@Service
public class LivroService {
	@Autowired
	LivroRepository livroRepository;
	
	public List<Livro> list (){
		return livroRepository.findAll();
	}
	
	public Livro create(Livro livro) {
		return livroRepository.save(livro);
	}
	
	public Livro update(Livro livro) {
		return livroRepository.save(livro);
	}
	
	public void delete(Integer id) {
		var livro = livroRepository.findById(id).get();		
		livro.setAtivoLivro(false);
		livro.setDestaqueLivro(false);		
		livroRepository.save(livro);
	}

}
