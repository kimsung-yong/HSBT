package domain.review;

import lombok.Data;

import java.util.Date;

@Data
public class ReviewReplyVO {
    private Long rr_no;
    private Long r_no;
    private String rr_content;
    private String id;
    private Date rr_regtime;
    private Date rr_updatetime;
}
