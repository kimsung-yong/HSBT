package domain.estimate;

import lombok.Data;

import java.sql.Date;

@Data
public class EstimateVO {
    private Long e_no;
    private Long e_area;
    private String e_content;
    private String e_address;
    private String id;
    private Long e_price;
    private String e_construction;
    private Date e_regtime;
    private Date e_updatetime;
}
