package service.qna;

import domain.Criteria;
import domain.qna.QnaVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mapper.QnaMapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Log4j
@Service
@AllArgsConstructor
public class QnaServiceImpl implements QnaService {
    private QnaMapper mapper;

    @Override
    public void register(QnaVO qna) {
        mapper.insertSelectKey(qna);
    }

    @Override
    public QnaVO get(Long q_no) {
        return mapper.read(q_no);
    }

    @Override
    public boolean modify(QnaVO qna) {
        return mapper.update(qna) == 1;
    }

    @Override
    public boolean remove(Long q_no) {
        return mapper.delete(q_no) == 1;
    }

    @Override
    public List<QnaVO> getList(Criteria cri) {
        return mapper.getListWithPaging(cri);
    }

    @Override
    public int getTotal(Criteria cri) {
        return mapper.getTotalCount(cri);
    }
}
