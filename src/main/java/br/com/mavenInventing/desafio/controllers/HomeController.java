package br.com.mavenInventing.desafio.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Controle da Home
 * @author jepherson
 *
 */
@Controller
public class HomeController {
	@RequestMapping("/")
	public String index() {
		return "home";
	}
	@RequestMapping("/home")
	public String home() {
		return "home";
	}

}
