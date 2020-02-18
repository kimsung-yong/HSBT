package domain.qna;

import lombok.Data;

import java.sql.Date;

@Data
public class QnaVO {
    private Long q_no;
    private String q_title;
    private String q_content;
    private String id;
    private Date q_regtime;
    private Date q_updatetime;

    private int replyCnt;
}
