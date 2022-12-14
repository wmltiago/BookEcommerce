package com.alpha.tc.bookecommerce.bookecommerce.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Editora;
import com.alpha.tc.bookecommerce.bookecommerce.repository.EditoraRepository;

@Service
public class EditoraService {
	@Autowired
	EditoraRepository editoraRepository;

	public List<Editora> list() {
		return editoraRepository.findAll();
	}

	public Editora create(Editora editora) {
		return editoraRepository.save(editora);
	}

	public Editora update(Integer id, Editora editora) {
		var oldEditora = editoraRepository.findById(id).get();		
		oldEditora.setNomeEditora(editora.getNomeEditora());		
		return editoraRepository.save(oldEditora);
	}
	
	public void delete(Integer id) {
		var editora = editoraRepository.findById(id).get();
		editora.setAtivoEditora(false);		
		editoraRepository.save(editora);
	}

}
