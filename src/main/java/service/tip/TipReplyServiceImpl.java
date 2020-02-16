package service.tip;

import domain.Criteria;
import domain.tip.TipReplyPageDTO;
import domain.tip.TipReplyVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mapper.TipMapper;
import mapper.TipReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Log4j
public class TipReplyServiceImpl implements TipReplyService {
    @Setter(onMethod_ = @Autowired)
    private TipReplyMapper mapper;

    @Setter(onMethod_ = @Autowired)
    private TipMapper tipMapper;

    @Transactional
    @Override
    public int register(TipReplyVO vo) {
        tipMapper.updateReplyCnt(vo.getT_no(), 1);
        return mapper.insert(vo);
    }

    @Override
    public TipReplyVO get(Long tr_no) {
        return mapper.read(tr_no);
    }

    @Override
    public int modify(TipReplyVO vo) {
        return mapper.update(vo);
    }

    @Transactional
    @Override
    public int remove(Long tr_no) {
        TipReplyVO vo = mapper.read(tr_no);

        tipMapper.updateReplyCnt(vo.getT_no(), -1);
        return mapper.delete(tr_no);
    }

    @Override
    public List<TipReplyVO> getList(Criteria cri, Long t_no) {
        return mapper.getListWithPaging(cri, t_no);
    }

    @Override
    public TipReplyPageDTO getListPage(Criteria cri, Long t_no) {
        return new TipReplyPageDTO(mapper.getCountByT_no(t_no), mapper.getListWithPaging(cri, t_no));
    }
}
