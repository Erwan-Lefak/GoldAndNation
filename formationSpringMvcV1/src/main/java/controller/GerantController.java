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
import model.Categorie;
import model.Particulier;
import model.Role;
import repository.ArticleRepository;
import repository.CategorieRepository;
import repository.ParticulierRepository;
import repository.UtilisateurRepository;

@Controller
@RequestMapping("/gerant")
public class GerantController {
	
	@Autowired
	ArticleRepository artrepo;
	@Autowired
	CategorieRepository categRepo;
	
	
	@RequestMapping("/")
	public String index() {
		return "gerant/index";
	}
	
	@GetMapping("/addProduct")
	public String addManager(Model model) {
		
		
		Article article = new Article();
		model.addAttribute("article",article);
		model.addAttribute("categories",categRepo.findAll());
		for (Categorie categ : categRepo.findAll()) {
			System.out.println(categ);
		}
		return "gerant/addProduct";
	}
	
	@PostMapping("/addProduct")
	public String info(Model model, @ModelAttribute(name="article") Article article) {
		
		System.out.println(article);
		artrepo.save(article);
		return "/gerant/successAddProduct";
		
	}
	
	@GetMapping("/listProduct")
	public String listManager(Model model) {
		List<Article> list = artrepo.findAll();
		model.addAttribute("listProducts",list);
		return "gerant/listProduct";
	}
	
	@GetMapping("/edit/product/{id}")
	public String editGerant(Model model, HttpServletRequest ht,@PathVariable(name="id") int id) {
		
		Optional<Article> optArticle = artrepo.findById(id);
		
		Article article = optArticle.get();
		
		model.addAttribute("articledit",article);
		model.addAttribute("categories",categRepo.findAll());
		
		return "gerant/editProduct";	
		}
	
	
	
	@PostMapping("/edit/product/{id}")
	public String saveUpdateProduct(Model model, @ModelAttribute(name="articledit") Article article ,HttpServletRequest ht,@PathVariable(name="id") int id) {
		
		
		Article artMod = (Article) article.clone();
		artrepo.save(artMod);
		return "gerant/successeditProduct";
	}
	
	
	@RequestMapping("/delete/product/{id}")
	public String deleteProduct(@PathVariable(name="id") int id) {
	    artrepo.deleteById(id);
	    return "gerant/successdeleteProduct";       
	}
	
	
}
