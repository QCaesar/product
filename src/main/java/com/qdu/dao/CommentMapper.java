package com.qdu.dao;

import com.qdu.pojo.Comment;

import java.util.List;

public interface CommentMapper {

    List<Comment> queryAllComment();

    int deleteComment(int commentId);

    Comment showComment(int commentId);

    List<Comment> showCommentUser(String reName);

    int addComment(Comment comment);

}
