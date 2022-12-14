package com.alpha.tc.bookecommerce.bookecommerce.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Autor;
import com.alpha.tc.bookecommerce.bookecommerce.repository.AutorRepository;

@Service
public class AutorService {
	@Autowired
	AutorRepository autorRepository;
	
	public List<Autor> findAll() {
		return autorRepository.findAll();
	}

	public Autor create(Autor autor) {
		return autorRepository.save(autor);
	}

	public Autor update(Integer id, Autor autor) {
		var oldAutor = autorRepository.findById(id).get();
		
		oldAutor.setNomeAutor(autor.getNomeAutor());
		
		return autorRepository.save(oldAutor);
	}
	
	public void delete(Integer id) {
		var autor = autorRepository.findById(id).get();

		autor.setStatusAutor(false);
		
		autorRepository.save(autor);
	}

}
