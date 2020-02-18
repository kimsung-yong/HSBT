package mapper;

import domain.Criteria;
import domain.qna.QnaVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QnaMapper {
    public List<QnaVO> getList();

    public List<QnaVO> getListWithPaging(Criteria cri);

    public void insert(QnaVO qna);

    public void insertSelectKey(QnaVO qna);

    public QnaVO read(Long q_no);

    public int delete(Long q_no);

    public int update(QnaVO qna);

    public int getTotalCount(Criteria cri);

    public void updateReplyCnt(@Param("q_no") Long q_no, @Param("amount") int amount);
}
