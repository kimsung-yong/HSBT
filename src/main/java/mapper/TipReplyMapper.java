package mapper;

import domain.Criteria;
import domain.tip.TipReplyVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TipReplyMapper {
    public int insert(TipReplyVO vo);
    public TipReplyVO read(Long t_no);
    public int delete(Long t_no);
    public int update(TipReplyVO vo);

    public List<TipReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("t_no") Long t_no);
    public int getCountByT_no(Long t_no);
    //1
}
