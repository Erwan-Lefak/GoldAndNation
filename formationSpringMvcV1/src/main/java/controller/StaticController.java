package controller;

import java.sql.Time;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Article;
import model.Categorie;
import model.Commande;
import model.LigneCommande;
import model.Particulier;
import model.Type;
import repository.ArticleRepository;
import repository.CategorieRepository;
import repository.LigneCommandeRepository;

@Controller
@RequestMapping("/static")
public class StaticController {
	@Autowired
	private CategorieRepository categRepository;
	
	@Autowired
	private LigneCommandeRepository lcRepo;
	
	@Autowired
	private ArticleRepository artRepo;
	
	@GetMapping("/carto")
	public String afficherCarto(Model model, HttpServletRequest ht) {
		model.addAttribute("categories",categRepository.findAll());
		
		return "static/carto";
	}
	
	@GetMapping("/conseil")
	public String afficherConseil() {
		
		return "static/conseil";
	}
	
	@GetMapping("/bestOf")
	public String afficherbestOf(Model model, HttpServletRequest ht) {
		model.addAttribute("categories",categRepository.findAll());
		
		List<Object> l =lcRepo.findQuantite();
		
		List<Object> bestof = new ArrayList<Object>();
		bestof.add(l.get(0));
		bestof.add(l.get(1));
		bestof.add(l.get(2));
		bestof.add(l.get(3));
		
		List<Article> articles_bestof = new ArrayList<Article>();
		
		for (Object resultat : bestof)
		{
			Object[] infoRes = (Object[])resultat;
			
			String lib = infoRes[0].toString();
			System.out.println("Article : " + lib); 
			articles_bestof.add(artRepo.findByNom(lib));
			
			int nbProd  = Integer.parseInt(infoRes[1].toString());			
			System.out.println("Nombre de ventes : " + nbProd);
		}
		
		
		model.addAttribute("article1", articles_bestof.get(0));
		model.addAttribute("article2", articles_bestof.get(1));
		model.addAttribute("article3", articles_bestof.get(2));
		model.addAttribute("article4", articles_bestof.get(3));
		
		return "static/bestOf";
	}
	
	
	
	@PostMapping("/bestOf")
	public String getAll3(Model model, HttpServletRequest ht) {
		
		
		model.addAttribute("categories",categRepository.findAll());
		
		//////////// Recup des articles bestof ////////////
		
		List<Object> l =lcRepo.findQuantite();
		
		List<Object> bestof = new ArrayList<Object>();
		bestof.add(l.get(0));
		bestof.add(l.get(1));
		bestof.add(l.get(2));
		bestof.add(l.get(3));
		
		List<Article> articles_bestof = new ArrayList<Article>();
		
		for (Object resultat : bestof)
		{
			Object[] infoRes = (Object[])resultat;
			
			String lib = infoRes[0].toString();
			System.out.println("Article : " + lib); 
			articles_bestof.add(artRepo.findByNom(lib));
			
			int nbProd  = Integer.parseInt(infoRes[1].toString());			
			System.out.println("Nombre de ventes : " + nbProd);
		}
		
		
		model.addAttribute("article1", articles_bestof.get(0));
		model.addAttribute("article2", articles_bestof.get(1));
		model.addAttribute("article3", articles_bestof.get(2));
		model.addAttribute("article4", articles_bestof.get(3));
			
		
		
		//////////////////////////////////////////
		
		
		Commande panier = (Commande) ht.getSession().getAttribute("panier");
		
		if (ht.getParameter("articleId") != null) {
			int articleId = Integer.parseInt(ht.getParameter("articleId"));
			boolean ligneAlreadyExists = false;
			for (LigneCommande ligneCommande : panier.getLignesCommande()) {
				if (ligneCommande.getArticle().getId() == articleId) {
					ligneAlreadyExists = true;
					ligneCommande.setQuantite(ligneCommande.getQuantite() + 1);
				}
			}
			if (!ligneAlreadyExists)
				panier.addLigneCommande(new LigneCommande(panier, artRepo.findById(articleId).get(), 1));
		}
		
		if (ht.getParameter("supp") != null) {
			int ligneId = Integer.parseInt(ht.getParameter("supp"));
			for (LigneCommande ligneCommande : panier.getLignesCommande()) {
				if (ligneCommande.getArticle().getId() == ligneId) {
					panier.getLignesCommande().remove(ligneCommande);
					break;
				}
			}
		}
		
		if (ht.getParameter("plus") != null) {
			int ligneId = Integer.parseInt(ht.getParameter("plus"));
			for (LigneCommande ligneCommande : panier.getLignesCommande()) {
				if (ligneCommande.getArticle().getId() == ligneId) {
					ligneCommande.setQuantite(ligneCommande.getQuantite() + 1);;
					break;
				}
			}
		}
		
		if (ht.getParameter("moins") != null) {
			int ligneId = Integer.parseInt(ht.getParameter("moins"));
			for (LigneCommande ligneCommande : panier.getLignesCommande()) {
				if (ligneCommande.getArticle().getId() == ligneId) {
					ligneCommande.setQuantite(ligneCommande.getQuantite() - 1);
					if (ligneCommande.getQuantite() == 0)
						panier.getLignesCommande().remove(ligneCommande);
					break;
				}
			}
		}
		
		
			panier.setPrix();
		
			ht.getSession().setAttribute("panier", panier);
		
		

		return "static/bestOf";
	}
	
	

}
