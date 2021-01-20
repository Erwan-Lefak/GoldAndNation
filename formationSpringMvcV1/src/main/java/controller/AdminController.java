package controller;

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

import model.Article;
import model.Commande;
import model.LigneCommande;
import model.Particulier;
import model.Role;
import model.Utilisateur;
import repository.ParticulierRepository;
import repository.UtilisateurRepository;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	UtilisateurRepository userRepo;

	@Autowired
	ParticulierRepository partRepo;

	@RequestMapping("")
	public String index() {
		return "admin/index";
	}

	@GetMapping("/add")
	public String addManager(Model model) {

		Particulier gerant = new Particulier();
		model.addAttribute("gerant", gerant);
		return "admin/addManager";
	}

	@PostMapping("/add")
	public String info(Model model, @ModelAttribute(name = "gerant") Particulier gerant, HttpServletRequest ht) {

		partRepo.save(gerant);
		return "redirect:../../adminLog/loginForm";

	}

	@GetMapping("/list")
	public String listManager(Model model) {
		List<Particulier> list = partRepo.findByRole(Role.Gérant);
		model.addAttribute("listgerant", list);
		return "admin/listManager";
	}

	@GetMapping("/edit/gerant/{id}")
	public String editGerant(Model model, HttpServletRequest ht, @PathVariable(name = "id") int id) {

		Optional<Particulier> optGerant = partRepo.findById(id);

		Particulier gerant = optGerant.get();

		model.addAttribute("gerantedit", gerant);

		return "admin/edit";
	}

	@PostMapping("/edit/gerant/{id}")
	public String saveUpdateGerant(Model model, @ModelAttribute(name = "gerantedit") Particulier gerant,
			HttpServletRequest ht, @PathVariable(name = "id") int id) {
		System.out.println(id);
		System.out.println(gerant.getId());
		Particulier gerMod = (Particulier) gerant.clone();
		partRepo.save(gerMod);
		return "admin/successmodif";
	}

	@RequestMapping("/delete/gerant/{id}")
	public String deleteCustomerForm(@PathVariable(name = "id") int id) {
		partRepo.deleteById(id);
		return "admin/successdelete";
	}

}
