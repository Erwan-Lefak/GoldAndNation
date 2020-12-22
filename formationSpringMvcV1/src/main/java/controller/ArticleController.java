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
import model.Article;
import model.Categorie;
import model.Commande;
import model.LigneCommande;
import model.Type;
import model.Utilisateur;
import repository.ArticleRepository;
import repository.CategorieRepository;

@Controller
@RequestMapping("/article")
public class ArticleController {

	@Autowired
	private ArticleRepository repository;
	@Autowired
	private CategorieRepository categRepository;

	
	@GetMapping("/accueil")
	public String getByBestOf(Model model, HttpServletRequest ht) {
		
		if (ht.getSession().getAttribute("panier") == null) {
			Commande commande = new Commande();
			ht.getSession().setAttribute("panier", commande);
		}
		
		model.addAttribute("articles",repository.findAll());
		model.addAttribute("categories",categRepository.findAll());
		return "home/accueil";	}
	
	@GetMapping("/articles")
	public String getAll(Model model, HttpServletRequest ht) {
		model.addAttribute("articles", repository.findAll());
		/*model.addAttribute("categories", categRepository.findAll());

		List<Article> pasdispo = new ArrayList();

		Categorie cat1 = categRepository.findById(1).get();
		Categorie cat2 = categRepository.findById(2).get();
		Categorie cat3 = categRepository.findById(3).get();
		Categorie cat4 = categRepository.findById(4).get();

		System.out.println("cat: " + cat1);
		System.out.println("cat: " + cat2);
		System.out.println("cat: " + cat3);
		System.out.println("cat: " + cat4);

		if (Time.valueOf(LocalTime.now()).after(cat1.getDebut())
				&& Time.valueOf(LocalTime.now()).before(cat1.getFin())) {
			System.out.println("condition 1");
			model.addAttribute("dispo", repository.findAllByCategories_id(1));
			pasdispo.addAll(repository.findByType(Type.PLAT));
			pasdispo.addAll(repository.findByType(Type.DESSERT));

			pasdispo.remove(repository.findById(21).get());
			// Juste ya la salade de fruits qui risque de s'afficher dans dispo et pas dispo
			// mais bon...
			model.addAttribute("pasdispo", pasdispo);

		}
		if (Time.valueOf(LocalTime.now()).after(cat2.getDebut())
				&& Time.valueOf(LocalTime.now()).before(cat2.getFin())) {
			System.out.println("condition 2");
			model.addAttribute("dispo", repository.findAllByCategories_id(2));
			pasdispo.addAll(repository.findByType(Type.ASSIETTE));
			pasdispo.addAll(repository.findByType(Type.VIENNOISERIE));
			pasdispo.add(repository.findById(18).get());
			model.addAttribute("pasdispo", pasdispo);

		}
		if (Time.valueOf(LocalTime.now()).after(cat3.getDebut())
				&& Time.valueOf(LocalTime.now()).before(cat3.getFin())) {
			System.out.println("condition 3");
			model.addAttribute("dispo", repository.findAllByCategories_id(3));
			pasdispo.addAll(repository.findByType(Type.PLAT));

			pasdispo.addAll(repository.findByType(Type.ASSIETTE));
			pasdispo.addAll(repository.findByType(Type.VIENNOISERIE));
			model.addAttribute("pasdispo", pasdispo);

		}
		if (Time.valueOf(LocalTime.now()).after(cat4.getDebut())
				&& Time.valueOf(LocalTime.now()).before(cat4.getFin())) {
			System.out.println("condition 4");
			model.addAttribute("dispo", repository.findAllByCategories_id(4));
			pasdispo.addAll(repository.findByType(Type.ASSIETTE));
			pasdispo.addAll(repository.findByType(Type.VIENNOISERIE));
			model.addAttribute("pasdispo", pasdispo);

		}

		if (Time.valueOf(LocalTime.now()).after(cat4.getFin())
				&& Time.valueOf(LocalTime.now()).before(cat1.getDebut())) {
			System.out.println("condition 5");
			return "article/cestpaslheure";

		}*/

		return "article/touslesarticles";
	}

	@PostMapping("/articles")
	public String getAll3(Model model, HttpServletRequest ht) {

		model.addAttribute("articles", repository.findAll());
		/*
		 * model.addAttribute("categories", categRepository.findAll());
		 * 
		 * //////////// Recup des attributs dispo et pasdispo ////////////
		 * 
		 * List<Article> pasdispo = new ArrayList();
		 * 
		 * Categorie cat1 = categRepository.findById(1).get(); Categorie cat2 =
		 * categRepository.findById(2).get(); Categorie cat3 =
		 * categRepository.findById(3).get(); Categorie cat4 =
		 * categRepository.findById(4).get();
		 * 
		 * if (Time.valueOf(LocalTime.now()).after(cat1.getDebut()) &&
		 * Time.valueOf(LocalTime.now()).before(cat1.getFin())) {
		 * model.addAttribute("dispo", repository.findAllByCategories_id(1));
		 * pasdispo.addAll(repository.findByType(Type.PLAT));
		 * pasdispo.addAll(repository.findByType(Type.DESSERT));
		 * 
		 * pasdispo.remove(repository.findById(21).get()); // Juste ya la salade de
		 * fruits qui risque de s'afficher dans dispo et pas dispo // mais bon...
		 * model.addAttribute("pasdispo", pasdispo);
		 * 
		 * } if (Time.valueOf(LocalTime.now()).after(cat2.getDebut()) &&
		 * Time.valueOf(LocalTime.now()).before(cat2.getFin())) {
		 * model.addAttribute("dispo", repository.findAllByCategories_id(2));
		 * pasdispo.addAll(repository.findByType(Type.ASSIETTE));
		 * pasdispo.addAll(repository.findByType(Type.VIENNOISERIE));
		 * pasdispo.add(repository.findById(18).get()); model.addAttribute("pasdispo",
		 * pasdispo);
		 * 
		 * } if (Time.valueOf(LocalTime.now()).after(cat3.getDebut()) &&
		 * Time.valueOf(LocalTime.now()).before(cat3.getFin())) {
		 * model.addAttribute("dispo", repository.findAllByCategories_id(3));
		 * pasdispo.addAll(repository.findByType(Type.PLAT));
		 * 
		 * pasdispo.addAll(repository.findByType(Type.ASSIETTE));
		 * pasdispo.addAll(repository.findByType(Type.VIENNOISERIE));
		 * model.addAttribute("pasdispo", pasdispo);
		 * 
		 * } if (Time.valueOf(LocalTime.now()).after(cat4.getDebut()) &&
		 * Time.valueOf(LocalTime.now()).before(cat4.getFin())) {
		 * model.addAttribute("dispo", repository.findAllByCategories_id(4));
		 * pasdispo.addAll(repository.findByType(Type.ASSIETTE));
		 * pasdispo.addAll(repository.findByType(Type.VIENNOISERIE));
		 * model.addAttribute("pasdispo", pasdispo);
		 * 
		 * }
		 * 
		 * //////////////////////////////////////////
		 * 
		 * Commande panier = (Commande) ht.getSession().getAttribute("panier");
		 * 
		 * if (ht.getParameter("articleId") != null) { int articleId =
		 * Integer.parseInt(ht.getParameter("articleId")); boolean ligneAlreadyExists =
		 * false; for (LigneCommande ligneCommande : panier.getLignesCommande()) { if
		 * (ligneCommande.getArticle().getId() == articleId) { ligneAlreadyExists =
		 * true; ligneCommande.setQuantite(ligneCommande.getQuantite() + 1); } } if
		 * (!ligneAlreadyExists) panier.addLigneCommande(new LigneCommande(panier,
		 * repository.findById(articleId).get(), 1)); }
		 * 
		 * if (ht.getParameter("supp") != null) { int ligneId =
		 * Integer.parseInt(ht.getParameter("supp")); for (LigneCommande ligneCommande :
		 * panier.getLignesCommande()) { if (ligneCommande.getArticle().getId() ==
		 * ligneId) { panier.getLignesCommande().remove(ligneCommande); break; } } }
		 * 
		 * if (ht.getParameter("plus") != null) { int ligneId =
		 * Integer.parseInt(ht.getParameter("plus")); for (LigneCommande ligneCommande :
		 * panier.getLignesCommande()) { if (ligneCommande.getArticle().getId() ==
		 * ligneId) { ligneCommande.setQuantite(ligneCommande.getQuantite() + 1); ;
		 * break; } } }
		 * 
		 * if (ht.getParameter("moins") != null) { int ligneId =
		 * Integer.parseInt(ht.getParameter("moins")); for (LigneCommande ligneCommande
		 * : panier.getLignesCommande()) { if (ligneCommande.getArticle().getId() ==
		 * ligneId) { ligneCommande.setQuantite(ligneCommande.getQuantite() - 1); if
		 * (ligneCommande.getQuantite() == 0)
		 * panier.getLignesCommande().remove(ligneCommande); break; } } }
		 * 
		 * if (ht.getParameter("passerCommande") != null) { // do whatever you want my
		 * dear friend Ayoub }
		 * 
		 * panier.setPrix(); ht.getSession().setAttribute("panier", panier);
		 */

		return "article/touslesarticles";
	}

	@GetMapping("/categorie/{id}")
	public String getByCateg(Model model, HttpServletRequest ht, @PathVariable(name = "id") int id) {

		model.addAttribute("categories", categRepository.findAll());

		Categorie catchoisie = categRepository.findById(id).get();

		model.addAttribute("heure", LocalTime.now());

		if (Time.valueOf(LocalTime.now()).before(catchoisie.getDebut())
				|| Time.valueOf(LocalTime.now()).after(catchoisie.getFin())) {

			return "article/cestpaslheure";
		}

		List<Article> list = repository.findAllByCategories_id(id);
		model.addAttribute("articles", list);

		return "article/articles";
	}

	@PostMapping("/categorie/{id}")
	public String getByCateg1(Model model, HttpServletRequest ht, @PathVariable(name = "id") int id) {

		List<Article> list = repository.findAllByCategories_id(id);
		model.addAttribute("articles", list);
		model.addAttribute("categories", categRepository.findAll());

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
				panier.addLigneCommande(new LigneCommande(panier, repository.findById(articleId).get(), 1));
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
					ligneCommande.setQuantite(ligneCommande.getQuantite() + 1);
					;
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

		if (ht.getParameter("passerCommande") != null) {
			// do whatever you want my dear friend Ayoub
		}

		panier.setPrix();
		ht.getSession().setAttribute("panier", panier);

		return "article/articles";
	}

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
		
		ArrayList<Article> list2 = (ArrayList<Article>) repository.findAll();
		ArrayList<Article> list1 =  (ArrayList<Article>) repository.findAllByCategories_id(2);
		ArrayList<Article> notAvailable = getNotAvailable(list1, list2);
		model.addAttribute("notAvailable",notAvailable);
		return "article/test";
	}
	

	private ArrayList<Article> getNotAvailable(ArrayList<Article> list1, ArrayList<Article> list2) {

		for (Article article : list1) {

			if (list2.contains(article))
				list2.remove(article);
		}

		return list2;

	}
}
