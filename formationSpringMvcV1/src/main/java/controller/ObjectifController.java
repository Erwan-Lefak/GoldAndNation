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
import model.LigneCommande;
import model.Objectif;
import model.Particulier;
import model.Role;
import model.Utilisateur;
import repository.CommandeRepository;
import repository.LigneCommandeRepository;
import repository.ObjectifRepository;
import repository.ParticulierRepository;

@Controller
@RequestMapping("/objectif")
public class ObjectifController {

	
	@Autowired
	private ObjectifRepository objectifRepo;
	
	@Autowired
	private ParticulierRepository partRepository;
	
	
	@GetMapping("/obj")
	public String obj(Model model) {

		Particulier obj = new Particulier();
		model.addAttribute("user", obj);
		return "inscription/part";
	}

	@PostMapping("/obj") 
	public String infoObjectif(Model model, @ModelAttribute(name = "obj") Particulier obj, HttpServletRequest ht) { 
		System.out.println(obj);
		partRepository.save(obj); 
		return "redirect:../profil/dashboard";

	}
	
	
	
}
