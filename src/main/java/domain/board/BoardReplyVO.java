package domain.board;

import lombok.Data;

import java.util.Date;

@Data
public class BoardReplyVO {

    private Long br_no;
    private Long b_no;
    private String id;

    private String br_content;
    private Date br_regTime;
    private Date br_updateTime;
}
