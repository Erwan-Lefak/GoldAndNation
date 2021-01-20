package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Commande;
import model.LigneCommande;
import model.Utilisateur;
import repository.CommandeRepository;
import repository.LigneCommandeRepository;

@Controller
@RequestMapping("/commande")
public class SuccesController {

	
	@Autowired
	private CommandeRepository commandeRepo;
	
	@Autowired
	private LigneCommandeRepository lcRepo;
	
	
	@GetMapping("/succes")
	public String validerCommande(Model model, HttpServletRequest ht ) {
		
		Commande commande = (Commande) ht.getSession().getAttribute("panier");
		commande.setUtilisateur((Utilisateur) ht.getSession().getAttribute("user"));
		commandeRepo.save(commande);
		
		for (LigneCommande ligne : commande.getLignesCommande())
		{
			lcRepo.save(ligne);
		}
		
		return "commande/succes";}
	
	
	
}
