package com.alpha.tc.bookecommerce.bookecommerce.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Autor;
import com.alpha.tc.bookecommerce.bookecommerce.entity.Categoria;
import com.alpha.tc.bookecommerce.bookecommerce.entity.Editora;
import com.alpha.tc.bookecommerce.bookecommerce.entity.Livro;

public interface LivroRepository extends JpaRepository<Livro, Integer> {
	
	List<Livro> findByDestaqueLivroTrue();
	
	List<Livro> findByTituloLivroContainingIgnoreCase(String titulo);
	
	List<Livro> findByAutorLivro(Autor autor);

	List<Livro> findByCategoriaLivro(Categoria categoria);

	List<Livro> findByEditoraLivro(Editora editora);
	

}
