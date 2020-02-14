package service.review;

import domain.Criteria;
import domain.TipReplyVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mapper.TipReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.TipReplyService;

import java.util.List;

@Service
@Log4j
public class TipReplyServiceImpl implements TipReplyService {
    @Setter(onMethod_ = @Autowired)
    private TipReplyMapper mapper;

    @Override
    public int register(TipReplyVO vo) {
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

    @Override
    public int remove(Long tr_no) {
        return mapper.delete(tr_no);
    }

    @Override
    public List<TipReplyVO> getList(Criteria cri, Long t_no) {
        return mapper.getListWithPaging(cri, t_no);
    }
}
