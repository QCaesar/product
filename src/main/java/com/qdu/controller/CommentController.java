package com.qdu.controller;

import com.qdu.pojo.Comment;
import com.qdu.pojo.Report;
import com.qdu.service.CommentService;
import com.qdu.service.CommentServiceImpl;
import com.qdu.service.LoginService;
import com.qdu.service.LoginServiceImpl;
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

//    private LoginService loginService=new LoginServiceImpl();
//    @Autowired
//    @Qualifier("LoginServiceImpl")
//    public void setLoginService(LoginService loginService) {
//        this.loginService = loginService;
//    }

    @RequestMapping("/allComment")
    public String allComment(Model model){
        List<Comment> comments=commentService.queryAllComment();
        model.addAttribute("commentList",comments);
        return "allComment";
    }

    @RequestMapping("/deleteComment")
    public String deleteComment(int commentId){
        commentService.deleteComment(commentId);
        return "redirect:/comment/allComment";
    }

    @RequestMapping("/toshowComment")
    public String showComment(int commentId,Model model){
        Comment comment = commentService.showComment(commentId);
        model.addAttribute("comment",comment);
        return "showComment";
    }

    @RequestMapping("/addCommentUser")
    public String addCommentUser(Comment comment,String commentReport){
        commentService.addComment(comment);
        return "forward:/login/showReportUser?reName="+commentReport;
    }

    @RequestMapping("/addCommentEditor")
    public String addCommentEditor(Comment comment,String commentReport){
        commentService.addComment(comment);
        return "forward:/login/showReportEditor?reName="+commentReport;
    }
//    @RequestMapping("/showReportUser")
//    public String showReportUser(String reName,Model model){
//        Report report = loginService.queryReportByName(reName);
//        List<Comment> comments=commentService.showCommentUser(reName);
//        model.addAttribute("report",report);
//        model.addAttribute("commentList",comments);
//        return "newsReadUser";
//    }
}
