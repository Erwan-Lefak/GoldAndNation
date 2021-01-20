package controller;

import java.sql.Time;
import java.time.LocalTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Categorie;
import model.Commande;
import model.LigneCommande;
import model.Utilisateur;
import repository.CommandeRepository;
import repository.LigneCommandeRepository;

@Controller
@RequestMapping("/user")
public class UserController {
	
	
	
	@Autowired
	private CommandeRepository commandeRepo;
	
	@Autowired
	private LigneCommandeRepository lcRepo;
	
	
	@GetMapping("/historique")
	public String validerCommande(Model model, HttpServletRequest ht ) {
		Utilisateur u = (Utilisateur) ht.getSession().getAttribute("user");
		model.addAttribute("utilisateur", u);
		//System.out.println(u);
		
		List<Commande> commandes = commandeRepo.findByUtilisateur_id(u.getId());
		System.out.println(commandes);
		model.addAttribute("commandes", commandes);
		
		//Commande commande = (Commande) ht.getSession().getAttribute("panier");
		
		
		
		return "user/historique";}
	
	@GetMapping("/details/{id}")
	public String getByCateg(Model model, HttpServletRequest ht, @PathVariable(name="id") int id) {
		
		Commande c = commandeRepo.findById(id).get();
		
		model.addAttribute("prix", c.getPrix());
		
		model.addAttribute("list", lcRepo.findByCommande_id(id));
		
			return "user/details";
		
	

}
	
}
