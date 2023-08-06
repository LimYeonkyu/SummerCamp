package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertBoard(BoardVO vo) {
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }

    public int updateBoard(BoardVO vo) {
        int result = sqlSession.update("Board.updateBoard", vo);
        return result;
    }

    public int viewCount(int board_seq){
        int result=sqlSession.update("Board.viewCount", board_seq);
        return result;
    }

    public int deleteBoard(int board_seq) {
        int result = sqlSession.delete("Board.deleteBoard", board_seq);
        return result;
    }

    public BoardVO getBoard(int board_seq) {
        BoardVO result = sqlSession.selectOne("Board.getBoard", board_seq);
        return result;
    }

    public List<BoardVO> getBoardList() {
        List<BoardVO> result = sqlSession.selectList("Board.getBoardList");
        return result;
    }

    public List<BoardVO> getBoardBest() {
        List<BoardVO> result = sqlSession.selectList("Board.getBoardBest");
        return result;
    }
}

