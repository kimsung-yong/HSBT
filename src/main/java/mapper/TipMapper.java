package mapper;

import domain.TipVO;

import java.util.List;

public interface TipMapper {
    public List<TipVO> getList();
    public void insert(TipVO tipVO);
    public void insertSelectKey(TipVO tipVO);
    public TipVO read(Long t_no);
    public int delete(Long t_no);
    public int update(TipVO tipVO);
}
