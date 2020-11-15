package com.qdu.service;

import com.qdu.dao.CommentMapper;
import com.qdu.pojo.Comment;

import java.util.List;

public class CommentServiceImpl implements CommentService {
    private CommentMapper commentMapper;

    public void setCommentMapper(CommentMapper commentMapper) {
        this.commentMapper = commentMapper;
    }

    public List<Comment> queryAllComment() {
        return commentMapper.queryAllComment();
    }
}
