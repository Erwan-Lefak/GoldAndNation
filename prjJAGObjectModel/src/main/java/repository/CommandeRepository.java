package repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import model.Article;
import model.Commande;
import model.Type;

public interface CommandeRepository extends JpaRepository<Commande, Integer> {
	
	@Query("select c from Commande c where utilisateur_IdUser = :param")
	List<Commande> findByUtilisateur_id(@Param("param") int param);

}
