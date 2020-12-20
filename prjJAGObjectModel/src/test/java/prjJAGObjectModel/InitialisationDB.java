package prjJAGObjectModel;

import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import model.Adresse;
import model.Article;
import model.Categorie;
import model.Commande;
import model.Entreprise;
import model.Particulier;
import model.Role;
import model.Type;
import model.Utilisateur;
import repository.ArticleRepository;
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
		
		CategorieRepository cr = ctxt.getBean(CategorieRepository.class);
		
		
		
		Time t1 = Time.valueOf(LocalTime.of(9, 00));  // heure +1 pour que �a mette l'h dans la base.
		Time t2 = Time.valueOf(LocalTime.of(12, 00));
		Time t3 = Time.valueOf(LocalTime.of(16, 00));
		Time t4 = Time.valueOf(LocalTime.of(19, 00));
		Time t5 = Time.valueOf(LocalTime.of(23, 00));
		
//		System.out.println(t3);
//		System.out.println(t1.after(t2));
		
		Categorie ct1 = new Categorie("Petit D�jeuner", "Pour bien commencer la journ�e ! ", t1, t2 );
		Categorie ct2 = new Categorie("D�jeuner", "Stop ! Prenez une pause gourmande pour midi...", t2, t3);
		Categorie ct3 = new Categorie("Go�ter", "Les poign�es d'amour c'est pour toi mon amour !", t3, t4);
		Categorie ct4 = new Categorie("Diner", "Du fait maison pour bluffer vos invit�s !", t4, t5);

		
		cr.save(ct1);
		cr.save(ct2);
		cr.save(ct3);
		cr.save(ct4);

		
		ArticleRepository ar = ctxt.getBean(ArticleRepository.class);
		
		Article art1 = new Article("Caf�", 2.0, "Composants: just coffee, Allerg�nes : caf�ine", Type.BOISSONCHAUDE, 20, "cafe.jpg" );
		art1.addCategorie(ct1);
		art1.addCategorie(ct2);
		art1.addCategorie(ct3);
		art1.addCategorie(ct4);
		Article art2 = new Article("Th�", 2.0, "Composants: just tea, Allerg�nes : th�ine", Type.BOISSONCHAUDE, 20, "the.jpg" );
		art2.addCategorie(ct1);
		art2.addCategorie(ct2);
		art2.addCategorie(ct3);
		art2.addCategorie(ct4);
		Article art3 = new Article("Chai latte", 2.0, "Composants: Th� aux epices et mousse de lait, Allerg�nes : th�ine, cardamone", Type.BOISSONCHAUDE, 20, "chai.jpg" );
		art3.addCategorie(ct1);
		art3.addCategorie(ct2);
		art3.addCategorie(ct3);
		art3.addCategorie(ct4);
		Article art4 = new Article("Chocolat Chaud", 3.0, "Composants: Lait cr�meux et chocolat noir, Allerg�nes : cacao, lactose", Type.BOISSONCHAUDE, 20, "choco.jpg" );
		art4.addCategorie(ct1);
		art4.addCategorie(ct2);
		art4.addCategorie(ct3);
		art4.addCategorie(ct4);
		Article art5 = new Article("Jus maison", 5.0, "Composants: Fruits de saison centrifug�s, Allerg�nes : selon les fruits", Type.BOISSONFRAICHE, 20, "jus.jpg" );
		art5.addCategorie(ct1);
		art5.addCategorie(ct2);
		art5.addCategorie(ct3);
		art5.addCategorie(ct4);
		
		Article art26 = new Article("Soda", 5.0, "Composants: Coca, Fanta ou IceTea", Type.BOISSONFRAICHE, 20, "soda.jpg" );
		
		art26.addCategorie(ct2);
		art26.addCategorie(ct3);
		art26.addCategorie(ct4);
		
		Article art22 = new Article("Smoothie", 5.0, "Composants: Bananes + Yaourt + Miel + Prots + Fruits Rouges, Allerg�nes: lactose", Type.BOISSONFRAICHE, 20, "smoothie.jpg" );
		art22.addCategorie(ct1);
		art22.addCategorie(ct2);
		art22.addCategorie(ct3);
		art22.addCategorie(ct4);
		
		Article art6 = new Article("Croissant", 2.0, "Composants: c'est un croissant quoi,  Allerg�nes : beurre", Type.VIENNOISERIE, 20, "croissant.jpg" );
		art6.addCategorie(ct1);
		Article art7 = new Article("Pain au Choco", 2.0, "Composants: vous connaissez dej�,  Allerg�nes : beurre, chocolat", Type.VIENNOISERIE, 20, "painchoco.jpg" );
		art7.addCategorie(ct1);
		Article art8 = new Article("Assiette continentale", 6.0, "Composants: Saucisse villageoise + Oeufs brouill�s + Toasts beurr�s + Confiture,  Allerg�nes : viande de porc, lactose, oeufs", Type.ASSIETTE, 20, "assiettec.jpg" );
		art8.addCategorie(ct1);
		Article art9 = new Article("Assiette bobo", 8.0, "Composants: Avocado toast + Saumon fum� + Roquette,  Allerg�nes : saumon, fruits � coques, oeuf, lactose", Type.ASSIETTE, 20, "assietteb.jpg" );
		art9.addCategorie(ct1);
		Article art10 = new Article("Assiette crunchy", 5.0, "Composants: Granola home made + Yaourt � la coco + fruits de saison, Allerg�nes : fruits � coques, lactose", Type.ASSIETTE, 20, "assiettecrunchy.jpg" );
		art10.addCategorie(ct1);
		
		

		
		
		Article art14 = new Article("Soupe de l�gumes de saison", 8.0, "Composants: Base pomme de terre + l�gumes de saison, Allerg�nes : aucun ", Type.PLAT, 20, "soupelegumes.jpg" );
		art14.addCategorie(ct2);
		art14.addCategorie(ct4);
		Article art15 = new Article("Burrito meilleur qu'� Chipotle", 10.0, "Composants: Tortilla de Ma�s + Guacamole + Poulet Effiloch� + Fromage + Sauce Piquante + Riz + Haricots, Allerg�nes : lactose, ma�s", Type.PLAT, 20, "burrito.jpg" );
		art15.addCategorie(ct2);
		art15.addCategorie(ct4);


		Article art21 = new Article("Cookie Maison", 2.0, "Composants: Cookie au Peanut Butter et P�pites de Choco, Allerg�nes : beurre, arachides, oeufs, lactose", Type.DESSERT, 20, "cookies.jpg" );
		art21.addCategorie(ct3);
		
		Article art23 = new Article("Brioche roul�e au comt�", 3.0, "Composants: C'est une brioche fourr�e au comt� quoi, Allerg�nes : lactose, oeufs", Type.DESSERT, 20, "brioche.jpg" );
		art23.addCategorie(ct3);
		Article art24 = new Article("Barres de c�r�ales bobo", 3.0, "Composants: FLocons d'avoine + Fruits secs + Nappage Choco, Allerg�nes : fruits � coques, cacao", Type.DESSERT, 20, "barre.jpg" );
		art24.addCategorie(ct3);
		
		Article art16 = new Article("Soupe de Chauve Souris", 20.0, "Composants: 100% Coronavirus, Allerg�nes : beurre,fruits � coque, oeuf, sang", Type.PLAT, 20, "soupecs.jpg" );
		art16.addCategorie(ct4);
		Article art17 = new Article("Lasagnes Ch�vre Epinards", 10.0, "Composants: p�tes + fromage de ch�vre + cr�me fra�che + sel + poivre + �pinards + piment, Allerg�nes : beurre, chocolat, baies de gojy, sciure de bouleau, foie de boeuf", Type.PLAT  , 20, "lasagnes.jpg" );
		art17.addCategorie(ct2);
		art17.addCategorie(ct4);
		Article art18 = new Article("Bucket de Poulet fa�on KFC", 9.0, "Composants: Filet de poulet + chapelure + oeuf + piment + sel + poivre,  Allerg�nes : mort aux rats, lactose, oeufs, plumes d'autruche, pieds de poulet, faux poulet", Type.PLAT  , 20, "poulet.jpg" );
		art18.addCategorie(ct4);
		art18.addCategorie(ct2); 
		
		
		Article art12 = new Article("Tiramisu speculoos framboises", 5.0, "Composants: Sp�culoos + Cr�me de mascarpone aux framboises, Allerg�nes : lactose, oeufs", Type.DESSERT, 20, "tiramisu.jpg" );
		art12.addCategorie(ct2);
		art12.addCategorie(ct3);
		art12.addCategorie(ct4);
		Article art20 = new Article("Salade de fruits de saison", 3.0, "Composants: Fruits de saison, Allerg�nes : aucun", Type.DESSERT, 20, "saladefruits.jpg" );
		art20.addCategorie(ct2);
		art20.addCategorie(ct4);
		art20.addCategorie(ct3);
		art20.addCategorie(ct1);
		Article art25 = new Article("Tarte au citron meringu�e", 4.0, "Composants: Base biscuit�e + Cr�me au citron + Meringue Italienne, Allerg�nes : fruits � coques, bl�, lactose", Type.DESSERT, 20, "tartecitron.jpg" );
		art25.addCategorie(ct4);
		art25.addCategorie(ct2);
		art25.addCategorie(ct3);
		
		
		ar.save(art1);
		ar.save(art2);
		ar.save(art3);
		ar.save(art4);
		ar.save(art5);
		ar.save(art6);
		ar.save(art7);
		ar.save(art8);
		ar.save(art9);
		ar.save(art10);
		
		ar.save(art12);
		
		ar.save(art14);
		ar.save(art15);
		ar.save(art16);
		ar.save(art17);
		ar.save(art18);
		
		ar.save(art20);
		ar.save(art21);
		ar.save(art22);
		ar.save(art23);
		ar.save(art24);
		ar.save(art25);
		ar.save(art26);
		
		
		//Initialisation des utilisateurs
		ParticulierRepository pr = ctxt.getBean(ParticulierRepository.class);
		
		Adresse adresseAdmin = new Adresse("Rue du Faubourg Saint-Honor�", 55, "Paris", 75008, "France");
		Particulier admin = new Particulier();
		admin.setAdresse(adresseAdmin);
		admin.setEmail("admin@admin.ru");
		admin.setNom("Dalor");
		admin.setPrenom("Homer");
		admin.setPassword("admin");
		admin.setRole(Role.Admin);
		pr.save(admin);
		
		Adresse adresseGerant = new Adresse("Rue des Batignolles", 43, "Paris", 75017, "France");
		Particulier gerant = new Particulier();
		gerant.setAdresse(adresseGerant);
		gerant.setEmail("gerant@gerant.ru");
		gerant.setNom("Kebabier");
		gerant.setPrenom("Maitre");
		gerant.setPassword("saladetomateoignon");
		gerant.setRole(Role.G�rant);
		pr.save(gerant);
		
		EntrepriseRepository er = ctxt.getBean(EntrepriseRepository.class);
		Adresse adresseEntreprise = new Adresse("Rue de la Boursidi�re", 8, "Le Plessis-Robinson", 92350, "France");
		Entreprise entreprise = new Entreprise();
		entreprise.setAdresse(adresseEntreprise);
		entreprise.setEmail("contact@kleegroup.com");
		entreprise.setNomEntreprise("Klee Group");
		entreprise.setPassword("klee123");
		entreprise.setRole(Role.Client);
		er.save(entreprise);
		
		ctxt.close();
		
	}
	
	static void testRepositoryFindByMarqueLike() {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("./applicationContext.xml");
		ArticleRepository pr = context.getBean(ArticleRepository.class);
		List<Article> list = pr.findByType(Type.VIENNOISERIE);
		for (Article p : list)
			System.out.println(p);
		context.close();
	}
	
	static void testRemoveProdCat() {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("./applicationContext.xml");
		ArticleRepository pr = context.getBean(ArticleRepository.class);
		CategorieRepository cr = context.getBean(CategorieRepository.class);
		

		
		cr.deleteById(1);
		


		List<Article> list = pr.findAll();
		
		
		for (Article c : list)
			System.out.println(c);
		
		
		context.close();
	}
	
	static void testStock() {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("./applicationContext.xml");
		ArticleRepository pr = context.getBean(ArticleRepository.class);
		
		
		Optional<Article> a = pr.findById(10);
		Article art = a.get();
		art.setStock(20);
		pr.save(art);
		System.out.println(art);
		
		context.close();
	}

	
	

}
