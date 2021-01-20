package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Commande;
import model.Promo;

@Controller
@RequestMapping("")
public class IndexController {

	@RequestMapping("/")
	public String index(HttpServletRequest ht) {

		if (ht.getSession().getAttribute("panier") == null) {
			Commande commande = new Commande();
			ht.getSession().setAttribute("panier", commande);
		}

		return "redirect:article/accueil";
	}
}
