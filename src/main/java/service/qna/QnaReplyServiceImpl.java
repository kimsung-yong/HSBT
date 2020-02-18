package service.qna;

import domain.Criteria;
import domain.qna.QnaReplyPageDTO;
import domain.qna.QnaReplyVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mapper.QnaMapper;
import mapper.QnaReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Log4j
public class QnaReplyServiceImpl implements QnaReplyService {
    @Setter(onMethod_ = @Autowired)
    private QnaReplyMapper mapper;

    @Setter(onMethod_ = @Autowired)
    private QnaMapper qnaMapper;

    @Transactional
    @Override
    public int register(QnaReplyVO vo) {
        qnaMapper.updateReplyCnt(vo.getQ_no(), 1);
        return mapper.insert(vo);
    }

    @Override
    public QnaReplyVO get(Long qr_no) {
        return mapper.read(qr_no);
    }

    @Override
    public int modify(QnaReplyVO vo) {
        return mapper.update(vo);
    }

    @Transactional
    @Override
    public int remove(Long qr_no) {
        QnaReplyVO vo = mapper.read(qr_no);
        qnaMapper.updateReplyCnt(vo.getQ_no(), -1);
        return mapper.delete(qr_no);
    }

    @Override
    public List<QnaReplyVO> getList(Criteria cri, Long q_no) {
        return mapper.getListWithPaging(cri, q_no);
    }

    @Override
    public QnaReplyPageDTO getListPage(Criteria cri, Long q_no) {
        return new QnaReplyPageDTO(mapper.getCountByQ_no(q_no), mapper.getListWithPaging(cri, q_no));
    }
}
