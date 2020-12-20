package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.Entreprise;
import model.Particulier;
import model.Role;
import model.Utilisateur;
import repository.EntrepriseRepository;
import repository.ParticulierRepository;
import repository.UtilisateurRepository;

@Controller
@RequestMapping("/inscription")
public class InscriptionController {

	@Autowired
	private ParticulierRepository partRepository;
	@Autowired
	EntrepriseRepository entRepo;

	@GetMapping("/pre")
	public String inscription(Model model) {

		return "inscription/type";
	}

	@PostMapping("/pre")
	public String handlePost(@RequestParam(required = false, value = "ent") String entFlag) {

		if (entFlag != null) {
			return "redirect:../inscription/inscriptionEnt";
		}

		return "redirect:../inscription/inscriptionPart";
	}

	@GetMapping("/inscriptionPart")
	public String inscriptionPart(Model model) {

		Particulier user = new Particulier();
		model.addAttribute("role", Role.Client);
		model.addAttribute("user", user);
		return "inscription/part";
	}

	@PostMapping("/inscriptionPart") 
	public String infoPart(Model model, @ModelAttribute(name = "user") Particulier user, HttpServletRequest ht) { 
		System.out.println(user);
		partRepository.save(user); 
		return "redirect:../login/loginForm";

	}

	@GetMapping("/inscriptionEnt")
	public String inscriptionEnt(Model model) {
		model.addAttribute("role", Role.Client);
		Entreprise entreprise = new Entreprise();
		model.addAttribute("entreprise", entreprise);
		return "inscription/ent";
	}

	@PostMapping("/inscriptionEnt") 
	public String infoEnt(Model model, @ModelAttribute(name = "entreprise") Entreprise entreprise, HttpServletRequest ht) { 
		System.out.println(entreprise);
		entRepo.save(entreprise);
		return "redirect:../login/loginForm";

	}
}
