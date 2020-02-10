package domain;

import lombok.Data;

import java.util.Date;

@Data
public class BoardVO {

    private Long b_no;
    private String b_title;
    private String b_content;
    private Long u_no;
    private Date b_regTime;
    private Date b_updateTime;

}
