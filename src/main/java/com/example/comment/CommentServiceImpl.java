package com.example.comment;

import com.example.comment.CommentDAO;
import com.example.comment.CommentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    CommentDAO commentDAO;

    @Override
    public int insertComment(CommentVO vo,int board_seq) {
        return commentDAO.insertComment(vo,board_seq);
    }

    @Override
    public int deleteComment(int seq) {
        return commentDAO.deleteComment(seq);
    }

    @Override
    public int updateComment(CommentVO vo) {
        return commentDAO.updateComment(vo);
    }

    @Override
    public CommentVO getComment(int seq) {
        return commentDAO.getComment(seq);
    }

    @Override
    public List<CommentVO> getCommentList(int board_seq) {
        return commentDAO.getCommentList(board_seq);
    }

    @Override
    public int deleteAllComment(int board_seq) {
        return commentDAO.deleteAllComment(board_seq);
    }
}
