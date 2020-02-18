package domain.qna;

import lombok.Data;

import java.util.Date;

@Data
public class QnaReplyVO {
    private Long qr_no;
    private String qr_content;
    private String id;
    private Long q_no;
    private Date qr_regtime;
    private Date qr_updatetime;
}
