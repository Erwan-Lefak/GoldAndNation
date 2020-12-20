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
import model.Role;
import model.Utilisateur;
import repository.UtilisateurRepository;

@Controller
@RequestMapping("/adminLog")
public class AdminLoginController {

	@Autowired
	private UtilisateurRepository userRepository;

	@GetMapping("/loginForm")
	public String inscription(Model model) {

		Utilisateur user = new Utilisateur();
		model.addAttribute("user", user);
		return "login/admin/login";
	}

	@PostMapping("/loginForm")
	public String info(Model model, @ModelAttribute(name = "user") Utilisateur user,
			@ModelAttribute(name = "email") String email, @ModelAttribute(name = "password") String password,
			HttpServletRequest ht) {
		// System.out.println(user);

		user = userRepository.findByEmailAndPassword(email, password);
		System.out.println("before condition: " + user);
		if (user != null) {
			if (user.getRole() == Role.Admin) {
				ht.getSession().setAttribute("role", "admin");
				System.out.println(user);
				return "redirect:../admin/";
			} else if (user.getRole() == Role.Gérant) {
				ht.getSession().setAttribute("role", "gerant");
				System.out.println(user);
				return "redirect:../gerant/";
			} else {
				return "redirect:../adminLog/login";
			}
		}

		return "redirect:../adminLog/login";
	}
}
