package com.example.comment;

import com.example.comment.CommentVO;

import java.util.List;

public interface CommentService {
    int insertComment(CommentVO vo,int board_seq);
    int deleteComment(int comment_seq);
    int updateComment(CommentVO vo);
    CommentVO getComment(int comment_seq);
    List<CommentVO> getCommentList(int board_seq);
    int deleteAllComment(int board_seq);
}
