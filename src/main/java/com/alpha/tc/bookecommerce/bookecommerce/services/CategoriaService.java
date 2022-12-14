package com.alpha.tc.bookecommerce.bookecommerce.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Categoria;
import com.alpha.tc.bookecommerce.bookecommerce.repository.CategoriaRepository;

@Service
public class CategoriaService {
	@Autowired
	CategoriaRepository categoriaRepository;
	
	public List<Categoria> list() {
		return categoriaRepository.findAll();
	}
	
	public Categoria create(Categoria body) {
		return categoriaRepository.save(body);
	}
	
	public Categoria update(Integer id, Categoria body){
		var antigaCategoria = categoriaRepository.findById(id).get();
		antigaCategoria.setNomeCategoria(body.getNomeCategoria());
		categoriaRepository.save(antigaCategoria);
		return antigaCategoria;
	}
	
	public void delete(Integer id){
		var categoria = categoriaRepository.findById(id).get();
		categoria.setAtivoCategoria(false);
		categoriaRepository.save(categoria);
	}

}
