package br.com.mavenInventing.desafio.omdb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.google.gson.Gson;

import br.com.mavenInventing.desafio.omdb.domain.Catalogo;
import br.com.mavenInventing.desafio.omdb.domain.Filme;

@Component
public class FilmeService implements FilmeFacadeService {
	
	@Autowired
	RestTemplate restTemplate;
	
	/**
	 * Pesquisar por titulo
	 */
	@Override
	public Catalogo pesquisar(Filme filme) {
		return pesquisar(filme,1);
	}

	/**
	 * pesquisar por titulo e paginado
	 */
	@Override
	public Catalogo pesquisar(Filme filme, Integer page) {
		StringBuilder url = new StringBuilder();
		url.append("http://www.omdbapi.com/?")
			.append("&apikey=4ff0a5a9")
			.append("&type=movie")
			.append("&page=".concat(page.toString()))
			.append("&s=".concat(filme.getTitle()));
		String response = restTemplate.getForObject(url.toString() ,String.class);
		Catalogo retorno =new Gson().fromJson(response, Catalogo.class);
		return retorno;
	}

	/**
	 * Pesquisar por ID do Filme
	 */
	@Override
	public Filme pesquisarFilmes(String idFilmes) {
		StringBuilder url = new StringBuilder();
		url.append("http://www.omdbapi.com/?")
			.append("&apikey=4ff0a5a9")
			.append("&type=movie")
			.append("&i=".concat(idFilmes));
		String response = restTemplate.getForObject(url.toString() ,String.class);
		Filme retorno =new Gson().fromJson(response, Filme.class);
		return retorno;
	}

}
