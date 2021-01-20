package repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Article;
import model.Utilisateur;

public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {
	
	Utilisateur findByEmailAndPassword(String email,String password);

}
