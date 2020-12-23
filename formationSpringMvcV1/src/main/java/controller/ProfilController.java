package controller;

import java.sql.Time;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Adresse;
import model.Partenaire;
import model.Commande;
import model.LigneCommande;
import model.Type;
import model.Utilisateur;
import repository.PartenaireRepository;
import repository.ProfilRepository;

@Controller
@RequestMapping("/profil")
public class ProfilController {

	@Autowired
	private ProfilRepository repository;

	
	/*
	 * @GetMapping("/accueil") public String getByBestOf(Model model,
	 * HttpServletRequest ht) {
	 * 
	 * if (ht.getSession().getAttribute("panier") == null) { Commande commande = new
	 * Commande(); ht.getSession().setAttribute("panier", commande); }
	 * 
	 * model.addAttribute("partenaires",repository.findAll()); return
	 * "home/accueil"; }
	 */
	
	@GetMapping("/dashboard")
	public String getAll(Model model, HttpServletRequest ht) {
		model.addAttribute("partenaires", repository.findAll());

		return "article/dashboard";
	}

	
	 @PostMapping("/dashboard") 
	 public String getAll3(Model model, HttpServletRequest ht) {
	  
	 model.addAttribute("dashboard", repository.findAll());
	 
		/* model.addAttribute("categories", categRepository.findAll()); */

		
		/*
		 * Commande panier = (Commande) ht.getSession().getAttribute("panier");
		 * 
		 * if (ht.getParameter("partenaireId") != null) { int articleId =
		 * Integer.parseInt(ht.getParameter("partenaireId")); boolean ligneAlreadyExists
		 * = false; for (LigneCommande ligneCommande : panier.getLignesCommande()) { if
		 * (ligneCommande.getPartenaire().getId() == articleId) { ligneAlreadyExists =
		 * true; ligneCommande.setQuantite(ligneCommande.getQuantite() + 1); } } if
		 * (!ligneAlreadyExists) panier.addLigneCommande(new LigneCommande(panier,
		 * repository.findById(articleId).get(), 1)); }
		 * 
		 * if (ht.getParameter("supp") != null) { int ligneId =
		 * Integer.parseInt(ht.getParameter("supp")); for (LigneCommande ligneCommande :
		 * panier.getLignesCommande()) { if (ligneCommande.getPartenaire().getId() ==
		 * ligneId) { panier.getLignesCommande().remove(ligneCommande); break; } } }
		 * 
		 * if (ht.getParameter("plus") != null) { int ligneId =
		 * Integer.parseInt(ht.getParameter("plus")); for (LigneCommande ligneCommande :
		 * panier.getLignesCommande()) { if (ligneCommande.getPartenaire().getId() ==
		 * ligneId) { ligneCommande.setQuantite(ligneCommande.getQuantite() + 1); ;
		 * break; } } }
		 * 
		 * if (ht.getParameter("moins") != null) { int ligneId =
		 * Integer.parseInt(ht.getParameter("moins")); for (LigneCommande ligneCommande
		 * : panier.getLignesCommande()) { if (ligneCommande.getPartenaire().getId() ==
		 * ligneId) { ligneCommande.setQuantite(ligneCommande.getQuantite() - 1); if
		 * (ligneCommande.getQuantite() == 0)
		 * panier.getLignesCommande().remove(ligneCommande); break; } } }
		 * 
		 * if (ht.getParameter("passerCommande") != null) { // do whatever you want my
		 * dear friend Ayoub }
		 * 
		 * panier.setPrix(); ht.getSession().setAttribute("panier", panier);
		 */
		/**/
		 return "article/dashboard"; }
		 

	
	 @GetMapping("/categorie/{id}") public String getByCateg(Model model,
	 HttpServletRequest ht, @PathVariable(name = "id") int id) {
	 /*
	 * model.addAttribute("categories", categRepository.findAll());
	 * 
	 * Categorie catchoisie = categRepository.findById(id).get();
	 * 
	 * model.addAttribute("heure", LocalTime.now());
	 * 
	 * if (Time.valueOf(LocalTime.now()).before(catchoisie.getDebut()) ||
	 * Time.valueOf(LocalTime.now()).after(catchoisie.getFin())) {
	 * 
	 * return "article/cestpaslheure"; }
	 * 
	 * List<Partenaire> list = repository.findAllByCategories_id(id);
	 * model.addAttribute("partenaires", list);
	 * 
	 **/ return "partenaire/partenaires"; }
	  
	 @PostMapping("/categorie/{id}") public String getByCateg1(Model model,
	 HttpServletRequest ht, @PathVariable(name = "id") int id) {
	/*
	 * List<Partenaire> list = repository.findAllByCategories_id(id);
	 * model.addAttribute("partenaires", list); model.addAttribute("categories",
	 * categRepository.findAll());
	 * 
	 * Commande panier = (Commande) ht.getSession().getAttribute("panier");
	 * 
	 * if (ht.getParameter("articleId") != null) { int articleId =
	 * Integer.parseInt(ht.getParameter("articleId")); boolean ligneAlreadyExists =
	 * false; for (LigneCommande ligneCommande : panier.getLignesCommande()) { if
	 * (ligneCommande.getPartenaire().getId() == articleId) { ligneAlreadyExists =
	 * true; ligneCommande.setQuantite(ligneCommande.getQuantite() + 1); } } if
	 * (!ligneAlreadyExists) panier.addLigneCommande(new LigneCommande(panier,
	 * repository.findById(articleId).get(), 1)); }
	 * 
	 * if (ht.getParameter("supp") != null) { int ligneId =
	 * Integer.parseInt(ht.getParameter("supp")); for (LigneCommande ligneCommande :
	 * panier.getLignesCommande()) { if (ligneCommande.getPartenaire().getId() ==
	 * ligneId) { panier.getLignesCommande().remove(ligneCommande); break; } } }
	 * 
	 * if (ht.getParameter("plus") != null) { int ligneId =
	 * Integer.parseInt(ht.getParameter("plus")); for (LigneCommande ligneCommande :
	 * panier.getLignesCommande()) { if (ligneCommande.getPartenaire().getId() ==
	 * ligneId) { ligneCommande.setQuantite(ligneCommande.getQuantite() + 1); ;
	 * break; } } }
	 * 
	 * if (ht.getParameter("moins") != null) { int ligneId =
	 * Integer.parseInt(ht.getParameter("moins")); for (LigneCommande ligneCommande
	 * : panier.getLignesCommande()) { if (ligneCommande.getPartenaire().getId() ==
	 * ligneId) { ligneCommande.setQuantite(ligneCommande.getQuantite() - 1); if
	 * (ligneCommande.getQuantite() == 0)
	 * panier.getLignesCommande().remove(ligneCommande); break; } } }
	 * 
	 * if (ht.getParameter("passerCommande") != null) { // do whatever you want my
	 * dear friend Ayoub }
	 * 
	 * panier.setPrix(); ht.getSession().setAttribute("panier", panier);
	 **/ 
	 return "profil/dashboard"; }
	 

	@RequestMapping("/deco")
	public String afterSucces(Model model, HttpServletRequest ht) {
		return "redirect:../deco/after";
	}
	
	@RequestMapping("/conseil")
	public String conseil() {
		return"static/conseil";
	}
	
	@RequestMapping("/test")
	public String test (Model model) {
		
		
		return "profil/test";
	}
	

	private ArrayList<Partenaire> getNotAvailable(ArrayList<Partenaire> list1, ArrayList<Partenaire> list2) {

		for (Partenaire p : list1) {

			if (list2.contains(p))
				list2.remove(p);
		}

		return list2;

	}
}
