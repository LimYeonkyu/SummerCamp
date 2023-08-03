package com.example.board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
    @Autowired
    BoardDAO boardDAO;
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main(Model model) {
        model.addAttribute("list", boardDAO.getBoardList());
        return "index";
    }

    @RequestMapping(value = "/topic/{board_seq}", method = RequestMethod.GET)
    public String topic(@PathVariable("board_seq") int board_seq, Model model) {
        BoardVO boardVO = boardDAO.getBoard(board_seq);
        model.addAttribute("b", boardVO);
        return "topic";
    }

    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String write() {
        return "write";
    }

    @RequestMapping(value = "/writeok", method = RequestMethod.POST)
    public String addPostOk(BoardVO vo) {
        boardDAO.insertBoard(vo);
        return "redirect:/";
    }

    @RequestMapping(value = "/delete/{board_seq}", method = RequestMethod.GET)
    public String deletePost(@PathVariable("board_seq") int board_seq) {
        boardDAO.deleteBoard(board_seq);
        return "redirect:/";
    }

    @RequestMapping(value = "/edit/{board_seq}", method = RequestMethod.GET)
    public String editPost(@PathVariable("board_seq") int board_seq, Model model) {
        BoardVO boardVO = boardDAO.getBoard(board_seq);
        model.addAttribute("b", boardVO);
        return "edit";
    }

    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editPostOk(BoardVO vo) {
        boardDAO.updateBoard(vo);
        return "redirect:/";
    }

    @RequestMapping(value = "/guidelines")
    public String guidelines() {
        return "guidelines";
    }


}
