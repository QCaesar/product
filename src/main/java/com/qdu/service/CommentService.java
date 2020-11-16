package com.qdu.service;

import com.qdu.pojo.Comment;

import java.util.List;

public interface CommentService {

    List<Comment> queryAllComment();

    int deleteComment(int commentId);

    Comment showComment(int commentId);

    List<Comment> showCommentUser(String reName);

    int addComment(Comment comment);
}
