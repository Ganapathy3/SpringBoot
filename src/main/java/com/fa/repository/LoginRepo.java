package com.fa.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.fa.entity.LoginEntity;

@Repository
public interface LoginRepo extends JpaRepository<LoginEntity, Long>{

	
//	@Query(value = "select * from login_credentials ",nativeQuery = true)
//	List<LoginEntity> getdata();

	
	@Query(value = "select name from login_credentials  where name=?1",nativeQuery = true)
	String getUserName(String name);

    
	
	@Query(value="select password from login_credentials where name=?1",nativeQuery= true) 
	String getPassword(String name);
}




