package service.tip;

import domain.Criteria;
import domain.tip.TipReplyPageDTO;
import domain.tip.TipReplyVO;

import java.util.List;

public interface TipReplyService {
    public int register(TipReplyVO vo);
    public TipReplyVO get(Long tr_no);
    public int modify(TipReplyVO vo);
    public int remove(Long tr_no);
    public List<TipReplyVO> getList(Criteria cri, Long t_no);
    public TipReplyPageDTO getListPage(Criteria cri, Long t_no);
}
