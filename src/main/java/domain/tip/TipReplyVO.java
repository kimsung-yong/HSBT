package domain.tip;

import lombok.Data;

import java.util.Date;

@Data
public class TipReplyVO {
    private Long tr_no;
    private Long t_no;

    private String tr_content;
    private String id;
    private Date tr_regtime;
    private Date tr_updatetime;
}
