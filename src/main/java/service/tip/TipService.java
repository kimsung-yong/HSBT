package service.tip;

import domain.Criteria;
import domain.tip.TipVO;

import java.util.List;

public interface TipService {
    public void register(TipVO tipVO);
    public TipVO get(Long t_no);
    public boolean modify(TipVO tipVO);
    public boolean remove(Long t_no);
    //public List<TipVO> getList();
    public List<TipVO> getList(Criteria cri);
    public int getTotalCount(Criteria cri);
}
