package com.example.comment;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommentVO {
    private int comment_seq;
    private Date regdate;
    private String content;
    private int board_seq;
    private String id;
}
