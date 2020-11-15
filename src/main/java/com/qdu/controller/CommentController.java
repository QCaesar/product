package com.qdu.controller;

import com.qdu.pojo.Comment;
import com.qdu.service.CommentService;
import com.qdu.service.CommentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {

    private CommentService commentService=new CommentServiceImpl();

    @Autowired
    @Qualifier("CommentServiceImpl")
    public void setCommentService(CommentService commentService) {
        this.commentService = commentService;
    }

    @RequestMapping("allComment")
    public String allComment(Model model){
        List<Comment> comments=commentService.queryAllComment();
        model.addAttribute("commentList",comments);
        return "allComment";
    }
}
