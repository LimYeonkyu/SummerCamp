package com.example.comment;
import com.example.board.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("*/comment/*")
public class CommentController {
    @Autowired
    CommentService service;

    @RequestMapping(value = "writeok/{board_seq}", method = RequestMethod.POST)
    public String addCommentOk(CommentVO vo,@PathVariable("board_seq") int board_seq, HttpServletRequest request) {
        service.insertComment(vo,board_seq);
        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping(value = "delete/{comment_seq}", method = RequestMethod.GET)
    public String deleteComment(@PathVariable("comment_seq") int comment_seq, HttpServletRequest request) {
        service.deleteComment(comment_seq);
        return "redirect:" + request.getHeader("Referer");
    }

}
