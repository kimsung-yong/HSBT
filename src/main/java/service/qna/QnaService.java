package service.qna;

import domain.Criteria;
import domain.qna.QnaVO;

import java.util.List;

public interface QnaService {
    public void register(QnaVO qna);
    public QnaVO get(Long q_no);
    public boolean modify(QnaVO qna);
    public boolean remove(Long q_no);
//    public List<QnaVO> getList();
    public List<QnaVO> getList(Criteria cri);
    public int getTotal(Criteria cri);
}
