package com.example.board;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
	private int board_seq;
	private String id;
	private String category;
	private String title;
	private String content;
	private String url;
	private Date regdate;
	private int view_count;
}
