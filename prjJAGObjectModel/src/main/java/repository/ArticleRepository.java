package repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import model.Article;
import model.Type;

public interface ArticleRepository extends JpaRepository<Article, Integer> {
	
	List<Article> findAllByCategories_id(int id);
	
	@Query("select a from Article a where a.type = :param")
	List<Article> findByType(@Param("param") Type param);
	
	Article findByNom(String nom);
	
}