package domain.board;

import domain.user.UserVO;
import lombok.Data;

import java.util.Date;

@Data
public class BoardVO {

    private Long b_no;
    private String b_title;
    private String b_content;
    private String u_id;
    private Date b_regTime;
    private Date b_updateTime;

    private UserVO userVO;
}