package com.example.comment;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class CommentDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertComment(CommentVO vo,int board_seq) {
        vo.setBoard_seq(board_seq);
        int result = sqlSession.insert("Comment.insertComment", vo);
        return result;
    }

    public int updateComment(CommentVO vo) {
        int result = sqlSession.update("Comment.updateComment", vo);
        return result;
    }

    public int deleteAllComment(int board_seq) {
        int result = sqlSession.delete("Comment.deleteAllComment", board_seq);
        return result;
    }

    public int deleteComment(int comment_seq) {
        int result = sqlSession.delete("Comment.deleteComment", comment_seq);
        return result;
    }

    public CommentVO getComment(int comment_seq) {
        CommentVO result = sqlSession.selectOne("Comment.getComment", comment_seq);
        return result;
    }

    public List<CommentVO> getCommentList(int board_seq) {
        List<CommentVO> result = sqlSession.selectList("Comment.getCommentList",board_seq);
        return result;
    }
}