package br.com.mavenInventing.desafio.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

import br.com.mavenInventing.desafio.omdb.domain.Catalogo;
import br.com.mavenInventing.desafio.omdb.domain.Filme;
import br.com.mavenInventing.desafio.omdb.service.FilmeFacadeService;

/**
 * Controller das pagina de pesquisar
 * @author jepherson
 *
 */
@Controller
@RequestMapping("/filmes")
@Scope(value=WebApplicationContext.SCOPE_REQUEST)
public class FilmesController {

	@Autowired
	private FilmeFacadeService filmeService;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("filmes");
	}
	
			
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView pesquisar(Filme filme) {
		Catalogo retorno = /*new Catalogo ();*/filmeService.pesquisar(filme);
		ModelAndView modelAndView = new ModelAndView("filmes");
		modelAndView.addObject("catalogo", retorno);
		modelAndView.addObject("search",filme.getTitle());
		modelAndView.addObject("page", 1);
		return modelAndView;
	}
	
	@RequestMapping(value="/detalhe",method = RequestMethod.GET)
	public ModelAndView pesquisarDescricao(String id,String search) {
		Filme retorno = filmeService.pesquisarFilmes(id);
		ModelAndView modelAndView = new ModelAndView("detalhe");
		modelAndView.addObject("filme", retorno);
		modelAndView.addObject("search", search);
		return modelAndView;
	}
}
