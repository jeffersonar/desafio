package br.com.mavenInventing.desafio.omdb.domain;

import java.io.Serializable;
/**
 * DTO representa a pesquisa por titulo
 * @author jepherson
 *
 */
public class Catalogo implements Serializable{

	private static final long serialVersionUID = 1L;
	private Filme[] Search;
	private Integer totalResults;
	
	public Catalogo() {
	}

	public Filme[] getSearch() {
		return Search;
	}

	public void setSearch(Filme[] search) {
		Search = search;
	}

	public Integer getTotalResults() {
		return totalResults;
	}

	public void setTotalResults(Integer totalResults) {
		this.totalResults = totalResults;
	}
	
}
