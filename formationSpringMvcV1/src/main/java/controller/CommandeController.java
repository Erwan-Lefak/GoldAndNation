package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import model.Commande;
import model.LigneCommande;
import model.Promo;
import model.Utilisateur;
import repository.CommandeRepository;
import repository.LigneCommandeRepository;
import repository.PromoRepository;

@Controller
@RequestMapping("/commande")
public class CommandeController {
	
	
	@Autowired
	private CommandeRepository commandeRepo;
	
	@Autowired
	private LigneCommandeRepository lcRepo;
	
	@Autowired
	private PromoRepository promoRepository;
	
	
	@GetMapping("/save")
	public String validerCommande(Model model, HttpServletRequest ht ) {
		
		Commande commande = (Commande) ht.getSession().getAttribute("panier");
		
		double prixsanspromo = commande.getPrix();
		model.addAttribute("prixsanspromo", prixsanspromo);
		ht.getSession().setAttribute("prixsanspromo", prixsanspromo);
		
		List<Promo> promodispo = promoRepository.findAll();
		if (!promodispo.isEmpty()) {
			
			model.addAttribute("promos", promodispo);}

		
		return "commande/prevalidation";
	}
		
		@PostMapping("/save")
		public String commandeSave(Model model, HttpServletRequest ht ) {		
		
		Commande commande = (Commande) ht.getSession().getAttribute("panier");
		
		double prixsanspromo= (double) ht.getSession().getAttribute("prixsanspromo");
		model.addAttribute("prixsanspromo", prixsanspromo);
		////////////////////////
		
		List<Promo> promodispo = promoRepository.findAll();
		System.out.println(promodispo);
		
		if (!promodispo.isEmpty()) {
		
		model.addAttribute("promos", promodispo);
		
		if (ht.getParameter("appliquerpromo") != null) {
			
			Promo promoappliquee = new Promo();
			ht.getSession().setAttribute("promoappliquee", promoappliquee);
			
			promoappliquee = (Promo) ht.getSession().getAttribute("promoappliquee");
			
			System.out.println(promoappliquee);
		
			
			int promoid = Integer.parseInt(ht.getParameter("appliquerpromo"));
		
		
			for (Promo promo : promoRepository.findAll()) {
				if (promo.getId() == promoid) {
					promoappliquee.setMontant(promo.getMontant());
					promoappliquee.setId(promo.getId());
					System.out.println(promoappliquee);
					break;
				}
				ht.getSession().setAttribute("promoappliquee", promoappliquee);
				//System.out.println(promoappliquee);
			}
		
			double prix2 =commande.getPrix()-commande.getPrix()*promoappliquee.getMontant()/100;
			
			model.addAttribute("panierpromo", prix2 );
			
			commande.setPrix2(prix2);

			
			System.out.println(prix2);
			
			
		}
		
		}
		/////////////////////////
		
		
			
		return "commande/prevalidation2";	
		}
		
		
		
}
