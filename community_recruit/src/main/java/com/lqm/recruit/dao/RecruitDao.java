package com.lqm.recruit.dao;

import com.lqm.recruit.pojo.Recruit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * 数据访问接口
 * @author Administrator
 *
 */
public interface RecruitDao extends JpaRepository<Recruit,String>,JpaSpecificationExecutor<Recruit>{

    /**
     * 推荐职位
     * @param s
     * @return
     */
    List<Recruit> findTop4ByStateOrderByCreatetimeDesc(String s);

    /**
     * 最新职位
     * @param s
     * @return
     */
    List<Recruit> findTop12ByStateNotOrderByCreatetimeDesc(String s);
}
