package repository;

import java.lang.annotation.Native;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import model.Article;
import model.Commande;
import model.LigneCommande;

public interface LigneCommandeRepository extends JpaRepository<LigneCommande, Integer> {
	
	@Query("select c from LigneCommande c where Id_Commande = :param")
	List<LigneCommande> findByCommande_id(@Param("param") int param);

	
	
	@Query(value="select lignecommande.article.nom, count(quantite) as nbr  from LigneCommande lignecommande GROUP BY lignecommande.article ORDER BY nbr DESC" )
	List<Object> findQuantite();
	
	
	
	
}
