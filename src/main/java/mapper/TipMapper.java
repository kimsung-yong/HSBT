package mapper;

import domain.Criteria;
import domain.tip.TipVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TipMapper {
    public List<TipVO> getList();

    public List<TipVO> getListWithPaging(Criteria cri);

    public void insert(TipVO tipVO);
    public void insertSelectKey(TipVO tipVO);
    public TipVO read(Long t_no);
    public int delete(Long t_no);
    public int update(TipVO tipVO);

    public int getTotalCount(Criteria cri);

    public void updateReplyCnt(@Param("t_no") Long t_no, @Param("amount") int amount);
}
