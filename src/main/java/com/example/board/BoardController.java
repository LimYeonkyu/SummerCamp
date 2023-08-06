package com.example.board;
import com.example.comment.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
    @Autowired
    BoardService boardService;
    @Autowired
    CommentService commentService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main(Model model) {
        model.addAttribute("list", boardService.getBoardList());
        return "index";
    }

    @RequestMapping(value = "/best", method = RequestMethod.GET)
    public String best(Model model) {
        model.addAttribute("list", boardService.getBoardBest());
        return "best";
    }

    @RequestMapping(value = "/topic/{board_seq}", method = RequestMethod.GET)
    public String topic(@PathVariable("board_seq") int board_seq, Model model) {
        BoardVO boardVO = boardService.getBoard(board_seq);
        boardService.viewCount(board_seq);
        model.addAttribute("b", boardVO);
        model.addAttribute("list", commentService.getCommentList(board_seq));
        return "topic";
    }

    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String write() {
        return "write";
    }

    @RequestMapping(value = "/writeok", method = RequestMethod.POST)
    public String addPostOk(BoardVO vo) {
        boardService.insertBoard(vo);
        return "redirect:/";
    }

    @RequestMapping(value = "/delete/{board_seq}", method = RequestMethod.GET)
    public String deletePost(@PathVariable("board_seq") int board_seq) {
        commentService.deleteAllComment(board_seq);
        boardService.deleteBoard(board_seq);
        return "redirect:/";
    }

    @RequestMapping(value = "/edit/{board_seq}", method = RequestMethod.GET)
    public String editPost(@PathVariable("board_seq") int board_seq, Model model) {
        BoardVO boardVO = boardService.getBoard(board_seq);
        model.addAttribute("b", boardVO);
        return "edit";
    }

    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editPostOk(BoardVO vo) {
        boardService.updateBoard(vo);
        return "redirect:/";
    }

    @RequestMapping(value = "/guidelines")
    public String guidelines() {
        return "guidelines";
    }


}
