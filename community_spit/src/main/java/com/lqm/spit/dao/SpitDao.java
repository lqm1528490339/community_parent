package com.lqm.spit.dao;

import com.lqm.spit.pojo.Spit;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface SpitDao extends MongoRepository<Spit,String> {

    //根据parentid
    Page<Spit> findByParentidOrderByPublishtime(String parentid, Pageable pageable);
}
