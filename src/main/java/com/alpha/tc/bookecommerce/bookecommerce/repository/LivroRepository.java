package com.alpha.tc.bookecommerce.bookecommerce.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Livro;

public interface LivroRepository extends JpaRepository<Livro, Integer> {
	List<Livro> findByDestaqueLivroTrue();
	List<Livro> findByTituloLivroContainingIgnoreCase(String titulo);

}
