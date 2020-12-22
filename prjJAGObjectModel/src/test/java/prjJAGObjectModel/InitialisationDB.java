package prjJAGObjectModel;

import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import model.Adresse;
import model.Partenaire;
import model.Categorie;
import model.Commande;
import model.Entreprise;
import model.Particulier;
import model.Role;
import model.Type;
import model.Utilisateur;
import repository.PartenaireRepository;
import repository.CategorieRepository;
import repository.CommandeRepository;
import repository.EntrepriseRepository;
import repository.ParticulierRepository;

public class InitialisationDB {

	public static void main(String[] args) {
		initialisation();
		
		//testRepositoryFindByMarqueLike();
		
		//testRemoveProdCat();
		
		 //testStock();
		 

	}
		
	static void initialisation()
	{
		ClassPathXmlApplicationContext ctxt = new ClassPathXmlApplicationContext("./applicationContext.xml");
		
		/*
		 * CategorieRepository cr = ctxt.getBean(CategorieRepository.class);
		 * 
		 * 
		 * 
		 * Time t1 = Time.valueOf(LocalTime.of(9, 00)); // heure +1 pour que ça mette
		 * l'h dans la base. Time t2 = Time.valueOf(LocalTime.of(12, 00)); Time t3 =
		 * Time.valueOf(LocalTime.of(16, 00)); Time t4 = Time.valueOf(LocalTime.of(19,
		 * 00)); Time t5 = Time.valueOf(LocalTime.of(23, 00));
		 * 
		 * // System.out.println(t3); // System.out.println(t1.after(t2));
		 * 
		 * Categorie ct1 = new Categorie("Petit Déjeuner",
		 * "Pour bien commencer la journée ! ", t1, t2 ); Categorie ct2 = new
		 * Categorie("Déjeuner", "Stop ! Prenez une pause gourmande pour midi...", t2,
		 * t3); Categorie ct3 = new Categorie("Goûter",
		 * "Les poignées d'amour c'est pour toi mon amour !", t3, t4); Categorie ct4 =
		 * new Categorie("Diner", "Du fait maison pour bluffer vos invités !", t4, t5);
		 * 
		 * 
		 * cr.save(ct1); cr.save(ct2); cr.save(ct3); cr.save(ct4);
		 */

		PartenaireRepository pr = ctxt.getBean(PartenaireRepository.class);
		
		
		
		Partenaire parte1 = new Partenaire("Tessa" , "Samuel", "", Type.ASSOCIATE, "sam_associate.jpg");
		
		Partenaire parte2 = new Partenaire("Tessa" , "Samuel", "", Type.BUILDER, "sam_builder.jpg");
		
		Partenaire parte3 = new Partenaire("Tessa" , "Samuel", "", Type.SILVER, "sam_silver.jpg");
		
		Partenaire parte4 = new Partenaire("Tessa" , "Samuel", "", Type.GOLD, "sam_gold.jpg");
		
		Partenaire parte5 = new Partenaire("Tessa" , "Samuel", "", Type.PLATINIUM, "sam_platinium.jpg");
		
		Partenaire parte6 = new Partenaire("Tessa" , "Samuel", "", Type.DIAMOND, "sam_diamond.jpg");
		
		Partenaire parte7 = new Partenaire("Tessa" , "Samuel", "", Type.BLUE_DIAMOND, "sam_blue_diamond.jpg");
		
		Partenaire parte8 = new Partenaire("Tessa" , "Samuel", "", Type.BLACK_DIAMOND, "sam_black_diamond.jpg");
		
		Partenaire parte9 = new Partenaire("Tessa" , "Samuel", "", Type.CROWN_DIAMOND, "sam_cromn_diamond.jpg");
		
		pr.save(parte1);
		pr.save(parte2);
		pr.save(parte3);
		pr.save(parte4);
		pr.save(parte5);
		pr.save(parte6);
		pr.save(parte7);
		pr.save(parte8);
		pr.save(parte9);


		
		
		/*
		 * //Initialisation des utilisateurs ParticulierRepository pr =
		 * ctxt.getBean(ParticulierRepository.class);
		 * 
		 * Adresse adresseAdmin = new Adresse("Rue du Faubourg Saint-Honoré", 55,
		 * "Paris", 75008, "France"); Particulier admin = new Particulier();
		 * admin.setAdresse(adresseAdmin); admin.setEmail("admin@admin.ru");
		 * admin.setNom("Dalor"); admin.setPrenom("Homer"); admin.setPassword("admin");
		 * admin.setRole(Role.Admin); pr.save(admin);
		 * 
		 * Adresse adresseGerant = new Adresse("Rue des Batignolles", 43, "Paris",
		 * 75017, "France"); Particulier gerant = new Particulier();
		 * gerant.setAdresse(adresseGerant); gerant.setEmail("gerant@gerant.ru");
		 * gerant.setNom("Kebabier"); gerant.setPrenom("Maitre");
		 * gerant.setPassword("saladetomateoignon"); gerant.setRole(Role.Gérant);
		 * pr.save(gerant);
		 * 
		 * EntrepriseRepository er = ctxt.getBean(EntrepriseRepository.class); Adresse
		 * adresseEntreprise = new Adresse("Rue de la Boursidière", 8,
		 * "Le Plessis-Robinson", 92350, "France"); Entreprise entreprise = new
		 * Entreprise(); entreprise.setAdresse(adresseEntreprise);
		 * entreprise.setEmail("contact@kleegroup.com");
		 * entreprise.setNomEntreprise("Klee Group"); entreprise.setPassword("klee123");
		 * entreprise.setRole(Role.Client); er.save(entreprise);
		 */
		
		ctxt.close();
		
	}
	
	static void testRepositoryFindByMarqueLike() {
		/*
		 * ClassPathXmlApplicationContext context = new
		 * ClassPathXmlApplicationContext("./applicationContext.xml");
		 * PartenaireRepository pr = context.getBean(PartenaireRepository.class);
		 * List<Partenaire> list = pr.findByType(Type.VIENNOISERIE); for (Partenaire p :
		 * list) System.out.println(p); context.close();
		 */
	}
	
	static void testRemoveProdCat() {
		/*
		 * ClassPathXmlApplicationContext context = new
		 * ClassPathXmlApplicationContext("./applicationContext.xml");
		 * PartenaireRepository pr = context.getBean(PartenaireRepository.class);
		 * CategorieRepository cr = context.getBean(CategorieRepository.class);
		 * 
		 * 
		 * 
		 * cr.deleteById(1);
		 * 
		 * 
		 * 
		 * List<Partenaire> list = pr.findAll();
		 * 
		 * 
		 * for (Partenaire c : list) System.out.println(c);
		 * 
		 * 
		 * context.close();
		 */
	}
	
	static void testStock() {
		/*
		 * ClassPathXmlApplicationContext context = new
		 * ClassPathXmlApplicationContext("./applicationContext.xml");
		 * PartenaireRepository pr = context.getBean(PartenaireRepository.class);
		 * 
		 * 
		 * Optional<Partenaire> a = pr.findById(10); Partenaire art = a.get();
		 * art.setStock(20); pr.save(art); System.out.println(art);
		 * 
		 * context.close();
		 */
	}

	
	

}
