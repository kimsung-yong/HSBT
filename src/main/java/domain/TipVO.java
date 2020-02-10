package domain;

import lombok.Data;

import java.util.Date;

@Data
public class TipVO {
    private Long tNo;
    private String tTitle;
    private String tContent;
    private Long uNo;
    private Date tRegTime;
    private Date tUpdateTime;

}
