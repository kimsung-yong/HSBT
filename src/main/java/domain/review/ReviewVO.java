package domain.review;

import domain.user.UserVO;
import lombok.Data;

import java.util.Date;

@Data
public class ReviewVO {
    private Long r_no;
    private String r_title;
    private String r_content;
    private String id;
    private Date r_regtime;
    private Date r_updatetime;
    private int replycnt;

    private UserVO userVO;
}

