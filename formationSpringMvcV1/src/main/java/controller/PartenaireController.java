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

@Controller
@RequestMapping("/partenaire")
public class PartenaireController {

	@Autowired
	private PartenaireRepository repository;
	
	@GetMapping("/partenaires")
	public String getAll(Model model, HttpServletRequest ht) {
		model.addAttribute("partenaires", repository.findAll());

		return "article/partenaires";
	}

	
	 @PostMapping("/partenaires") 
	 public String getAll2(Model model, HttpServletRequest ht) {
	  
	 model.addAttribute("partenaires", repository.findAll());
	 
		
		 return "article/partenaires"; }
	 
	 @GetMapping("/temoignages")
		public String getAll3(Model model, HttpServletRequest ht) {
			model.addAttribute("partenaires", repository.findAll());

			return "article/temoignages";
		}

		
		 @PostMapping("/temoignages") 
		 public String getAll4(Model model, HttpServletRequest ht) {
			
			 return "article/temoignages"; }
		 
		 @GetMapping("/tutoriels")
			public String getAll5(Model model, HttpServletRequest ht) {

				return "article/tutoriels";
			}

			
			 @PostMapping("/tutoriels") 
			 public String getAll6(Model model, HttpServletRequest ht) {
				
				 return "article/tutoriels"; }
		 

	
	 @GetMapping("/categorie/{id}") public String getByCateg(Model model,
	 HttpServletRequest ht, @PathVariable(name = "id") int id) {
	 
	 return "partenaire/partenaires"; }
	  
	 @PostMapping("/categorie/{id}") public String getByCateg1(Model model,
	 HttpServletRequest ht, @PathVariable(name = "id") int id) {
	
	 return "partenaire/partenaires"; }
	 

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
		
		
		return "partenaire/test";
	}
	

	private ArrayList<Partenaire> getNotAvailable(ArrayList<Partenaire> list1, ArrayList<Partenaire> list2) {

		for (Partenaire p : list1) {

			if (list2.contains(p))
				list2.remove(p);
		}

		return list2;

	}
}
