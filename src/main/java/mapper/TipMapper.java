package mapper;

import domain.TipVO;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface TipMapper {
    @Select("select * from tbl_tip where tno > 0")
    public List<TipVO> getList();
}
