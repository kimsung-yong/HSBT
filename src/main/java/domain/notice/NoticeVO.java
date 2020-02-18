package domain.notice;

import lombok.Data;

import java.util.Date;

@Data
public class NoticeVO {
    private Long n_no;
    private String n_title;
    private String n_content;
    private String id;
    private Date n_regTime;
    private Date n_updateTime;
}
