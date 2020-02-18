package service.qna;

import domain.Criteria;
import domain.qna.QnaReplyPageDTO;
import domain.qna.QnaReplyVO;

import java.util.List;

public interface QnaReplyService {
    public int register(QnaReplyVO vo);
    public QnaReplyVO get(Long qr_no);
    public int modify(QnaReplyVO vo);
    public int remove(Long qr_no);
    public List<QnaReplyVO> getList(Criteria cri, Long q_no);
    public QnaReplyPageDTO getListPage(Criteria cri, Long q_no);
}
