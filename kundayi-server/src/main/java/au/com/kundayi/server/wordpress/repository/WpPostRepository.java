package au.com.kundayi.server.wordpress.repository;

import java.util.List;

import au.com.kundayi.server.wordpress.domain.WpPost;

public interface WpPostRepository {

	List<WpPost> findBySlug(String slug);
	
	WpPost findByPostName(String postName);
	
}
