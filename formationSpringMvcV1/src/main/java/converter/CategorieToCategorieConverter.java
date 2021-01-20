package converter;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import model.Categorie;
import repository.ArticleRepository;
import repository.CategorieRepository;

@Component
public class CategorieToCategorieConverter implements Converter<Object, Categorie>{
	
	@Autowired
	CategorieRepository categrepo;

	@Override
	public Categorie convert(Object element) {
		Integer id = Integer.parseInt((String)element);
        Optional<Categorie> categ= categrepo.findById(id);
        Categorie categorie = categ.get();
        System.out.println("categorie : "+categorie);
        return categorie;
	}
}
