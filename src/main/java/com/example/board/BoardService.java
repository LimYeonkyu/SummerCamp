package com.example.board;

import java.util.List;

public interface BoardService {
    int insertBoard(BoardVO vo);
    int deleteBoard(int seq);
    int updateBoard(BoardVO vo);
    BoardVO getBoard(int seq);
    List<BoardVO> getBoardList();
    public int viewCount(int board_seq);
    public List<BoardVO> getBoardBest();
}
