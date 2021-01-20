package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Commande;
import model.Utilisateur;

@Controller
@RequestMapping("/deco")
public class DeconnexionController {
	
	@RequestMapping("/after")
	public String afterSucces(Model model,HttpServletRequest ht) {
		Commande commande = new Commande();
		ht.getSession().setAttribute("panier", commande);
		if(ht.getParameter("continue") != null) {
			return "redirect:../article/articles" ;
		}
		return "redirect:../login/loginForm";
		
	}
}
