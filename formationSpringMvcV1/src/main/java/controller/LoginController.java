package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Commande;
import model.Utilisateur;
import repository.UtilisateurRepository;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private UtilisateurRepository userRepository;

	@GetMapping("/loginForm")
	public String inscription(Model model, HttpServletRequest ht) {

		ht.getSession().removeAttribute("user");
		Utilisateur user = new Utilisateur();
		model.addAttribute("user", user);
		return "login/login";
	}

	@PostMapping("/loginForm")
	public String info(Model model, @ModelAttribute(name = "user") Utilisateur user,
			@ModelAttribute(name = "email") String email, @ModelAttribute(name = "password") String password,
			HttpServletRequest ht) {
		// System.out.println(user);

		user = userRepository.findByEmailAndPassword(email, password);
		if (user != null) {
			if(ht.getSession().getAttribute("panier") != null)
				ht.getSession().setAttribute("user", user);
			else
			{
			Commande commande = new Commande();
			ht.getSession().setAttribute("user", user);
			ht.getSession().setAttribute("panier", commande);
			}
			return "redirect:../article/articles";
		} else {
			return "login/login";
		}

	}
}
