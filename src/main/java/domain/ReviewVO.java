package domain;

import lombok.Data;

import java.util.Date;

@Data
public class ReviewVO {
//    private Long rno;
//    private String rtitle;
//    private String rcontent;
////    private Long uno;
//    private Date rregtime;
//    private Date rupdatetime;
    private Long r_no;
    private String r_title;
    private String r_content;
    private String id;
    private Date r_regtime;
    private Date r_updatetime;

    private UserVO userVO;
}

