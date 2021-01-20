package prjJAGObjectModel;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import model.Article;
import model.Categorie;
import model.Particulier;
import repository.ArticleRepository;
import repository.ParticulierRepository;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//testCreationArticle();
		testLogin();
	}
//		static void testCreationArticle()
//		{
//			ClassPathXmlApplicationContext ctxt = new ClassPathXmlApplicationContext("./applicationContext.xml");
//			ArticleRepository ar = ctxt.getBean(ArticleRepository.class);
//			ar.save(new Article("chwing-gum",2.0,null,null));
//			ctxt.close();
//		}
		
	static void testLogin()
	{
		ClassPathXmlApplicationContext ctxt = new ClassPathXmlApplicationContext("./applicationContext.xml");
		ParticulierRepository pr = ctxt.getBean(ParticulierRepository.class);
		Particulier part = pr.findFirstByEmailAndPassword("admin@admin.ru", "admin");
		System.out.println(part);
	}

	//	 Adresse(String rue, int numero, String ville, int codePostal, String pays) {
	
	

}
