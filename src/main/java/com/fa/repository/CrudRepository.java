package com.fa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.fa.entity.CrudEntity;
@Repository
public interface CrudRepository extends JpaRepository<CrudEntity, Long> {
    

	@Query(value="select * from crud_entity where name=?1",nativeQuery = true)
    CrudEntity getDataByName(String name);
	
	@Query(value="select id from crud_entity where name=?1",nativeQuery = true)
    Long getIdByName(String name);
}

