package mapper;

import domain.Criteria;
import domain.qna.QnaReplyVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QnaReplyMapper {
    public int insert(QnaReplyVO vo);
    public QnaReplyVO read(Long q_no);
    public int delete(Long q_no);
    public int update(QnaReplyVO vo);
    public List<QnaReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("q_no") Long q_no);
    public int getCountByQ_no(Long q_no);
}
