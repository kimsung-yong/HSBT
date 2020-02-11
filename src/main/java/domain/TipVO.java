package domain;

import lombok.Data;

import java.util.Date;

@Data
public class TipVO {
    private Long t_no;
    private String t_title;
    private String t_content;
    private Long u_no;
    private Date t_regtime;
    private Date t_updatetime;

    private UserVO userVO;
}
