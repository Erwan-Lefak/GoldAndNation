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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Adresse;
import model.Partenaire;
import model.Particulier;
import model.Commande;
import model.LigneCommande;
import model.Type;
import model.Utilisateur;
import repository.PartenaireRepository;
import repository.ParticulierRepository;
import repository.ProfilRepository;

@Controller
@RequestMapping("/profil")
public class ProfilController {

	@Autowired
	private ProfilRepository repository;
	
	@Autowired
	private ParticulierRepository partRepository;

	@GetMapping("/dashboard")
	public String getAll(Model model, HttpServletRequest ht) {
		model.addAttribute("partenaires", repository.findAll());

		return "article/dashboard";
	}

	@PostMapping("/dashboard")
	public String getAll1(Model model, HttpServletRequest ht) {

		model.addAttribute("dashboard", repository.findAll());
		return "article/dashboard";
	}
	
	@GetMapping("/planning")
	public String getAll2(Model model, HttpServletRequest ht) {
		model.addAttribute("partenaires", repository.findAll());

		return "article/planning";
	}

	@PostMapping("/planning")
	public String getAll3(Model model, HttpServletRequest ht) {

		model.addAttribute("dashboard", repository.findAll());
		return "article/planning";
	}
	
	@GetMapping("/liste")
	public String getAll4(Model model, HttpServletRequest ht) {
		model.addAttribute("partenaires", repository.findAll());

		return "article/liste";
	}

	@PostMapping("/liste")
	public String getAll5(Model model, HttpServletRequest ht) {

		model.addAttribute("liste", repository.findAll());
		return "article/liste";
	}
	
	@GetMapping("/grade")
	public String getAll6(Model model, HttpServletRequest ht) {
		model.addAttribute("partenaires", repository.findAll());

		return "article/grade";
	}

	@PostMapping("/grade")
	public String getAll7(Model model, HttpServletRequest ht) {

		model.addAttribute("liste", repository.findAll());
		return "article/grade";
	}
	
	@GetMapping("/support")
	public String getAll8(Model model, HttpServletRequest ht) {
		model.addAttribute("partenaires", repository.findAll());

		return "article/support";
	}

	@PostMapping("/support")
	public String getAll9(Model model, HttpServletRequest ht) {

		model.addAttribute("liste", repository.findAll());
		return "article/support";
	}
	
	@GetMapping("/documentation")
	public String getAll10(Model model, HttpServletRequest ht) {
		model.addAttribute("partenaires", repository.findAll());

		return "article/documentation";
	}

	@PostMapping("/documentation")
	public String getAll11(Model model, HttpServletRequest ht) {

		model.addAttribute("liste", repository.findAll());
		return "article/documentation";
	}
	
	@GetMapping("/edit/objectif/{id}")
	public String editObjectif(Model model, HttpServletRequest ht,@PathVariable(name="id") int id) {
		
		Optional<Particulier> optParticulier = partRepository.findById(id);
		
		Particulier particulier = optParticulier.get();
		
		model.addAttribute("particulieredit",particulier);
		
		return "article/editObjectif";	
		}
	
	
	
	@PostMapping("/edit/objectif/{id}")
	public String saveUpdateObjectif(Model model, @ModelAttribute(name="particulieredit") Particulier particulier ,HttpServletRequest ht,@PathVariable(name="id") int id) {
		
		
		Particulier partMod = (Particulier) particulier.clone();
		partRepository.save(partMod);
		return "article/dashboard";
	}

	@GetMapping("/categorie/{id}")
	public String getByCateg(Model model, HttpServletRequest ht, @PathVariable(name = "id") int id) {
		return "partenaire/partenaires";
	}
	
	

	@PostMapping("/categorie/{id}")
	public String getByCateg1(Model model, HttpServletRequest ht, @PathVariable(name = "id") int id) {
		return "profil/dashboard";
	}

	@RequestMapping("/deco")
	public String afterSucces(Model model, HttpServletRequest ht) {
		return "redirect:../deco/after";
	}

	@RequestMapping("/conseil")
	public String conseil() {
		return "static/conseil";
	}

	@RequestMapping("/test")
	public String test(Model model) {

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
