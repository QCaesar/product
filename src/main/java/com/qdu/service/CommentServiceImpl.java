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

    public int deleteComment(int commentId) {
        return commentMapper.deleteComment(commentId);
    }

    public Comment showComment(int commentId) {
        return commentMapper.showComment(commentId);
    }

    public List<Comment> showCommentUser(String reName) {
        return commentMapper.showCommentUser(reName);
    }

    public int addComment(Comment comment) {
        return commentMapper.addComment(comment);
    }
}
