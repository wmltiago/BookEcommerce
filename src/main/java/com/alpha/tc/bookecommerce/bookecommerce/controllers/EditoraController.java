package com.alpha.tc.bookecommerce.bookecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alpha.tc.bookecommerce.bookecommerce.entity.Editora;
import com.alpha.tc.bookecommerce.bookecommerce.repository.EditoraRepository;

@Controller
public class EditoraController {

	@Autowired
	EditoraRepository editoraRepository;
	
				
	@GetMapping("/admin/cadastroEditora")
	public ModelAndView cadastroEditora(Editora editora) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/formCadastroEditora");
		return modelAndView;
	}
	
	@PostMapping("admin/formCadastroEditora")
    public ModelAndView cadastrarEditora(Editora editora) {
        ModelAndView modelAndView = new ModelAndView("admin/formCadastroEditora");
        editoraRepository.save(editora);
        return modelAndView;
    }		
	
	@GetMapping("admin/listarEditoras")
	public ModelAndView listaEditoras(Editora editora) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/listaEditoras");
		modelAndView.addObject("listaEditoras", editoraRepository.findAll());
		return modelAndView;
	}
	
	@GetMapping("/inativarEditora/{id1}")
	public ModelAndView inativarEditora(@PathVariable("id1") Integer id444) {
		ModelAndView modelAndView = new ModelAndView("redirect:/admin/listarEditoras");
		Editora editora = editoraRepository.findById(id444).get();
		editora.setAtivoEditora(false);
		editoraRepository.save(editora);
		return modelAndView;
	}
	
	@GetMapping("/ativarEditora/{id1}")
	public ModelAndView ativarEditora(@PathVariable("id1") Integer id444) {
		ModelAndView modelAndView = new ModelAndView("redirect:/admin/listarEditoras");
		Editora editora = editoraRepository.findById(id444).get();
		editora.setAtivoEditora(true);
		editoraRepository.save(editora);
		return modelAndView;
	}

	@GetMapping("/editarEditora/{id1}")
	public ModelAndView editarEditora(@PathVariable("id1") Integer id444, Editora editora) {
		ModelAndView modelAndView = new ModelAndView("/admin/formEditarEditora");
		Editora editoraEditado = editoraRepository.getById(id444);
		modelAndView.addObject("editoraNova", editoraEditado);
		return modelAndView;
	}

	@PostMapping("/editarEditora")
	public ModelAndView editarEditoraPost(Editora editora) {
		ModelAndView modelAndView = new ModelAndView("redirect:admin/listarEditoras");/*aqui vc chama o uri de listar normal*/
		Editora editoraNova = editoraRepository.getById(editora.getIdEditora());
		editoraNova.setNomeEditora(editora.getNomeEditora());		
		editoraRepository.save(editoraNova);
		return modelAndView;
	}
}
