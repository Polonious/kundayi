package au.com.kundayi.cms.repository;

import java.util.List;

import au.com.kundayi.cms.domain.Category;
import au.com.regimo.core.repository.GenericRepository;

public interface CategoryRepository extends GenericRepository<Category> {

	List<Category> findByName(String name);

	Category findBySlug(String slug);

}
