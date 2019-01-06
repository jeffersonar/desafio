package br.com.mavenInventing.desafio.omdb.service;
import br.com.mavenInventing.desafio.omdb.domain.Catalogo;
import br.com.mavenInventing.desafio.omdb.domain.Filme;
/**
 * Interface do Serviço
 * @author jepherson
 *
 */
public interface FilmeFacadeService {

	public Catalogo pesquisar(Filme filme);
	
	public Catalogo pesquisar(Filme filme,Integer page);

	public Filme pesquisarFilmes(String idFilmes);
}
