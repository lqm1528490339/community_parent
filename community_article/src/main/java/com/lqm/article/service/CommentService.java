package com.lqm.article.service;

import com.lqm.article.dao.CommentDao;
import com.lqm.article.pojo.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import utils.IdWorker;

import java.util.List;

@Service
public class CommentService {
    @Autowired
    CommentDao commentDao;

    public List<Comment> findByArticleid(String articleid){
        return commentDao.findByArticleid(articleid);
    }
    @Autowired
    private IdWorker idWorker;

    public void add(Comment comment){
        comment.setId( idWorker.nextId()+""
        );
        commentDao.save(comment);
    }
}
