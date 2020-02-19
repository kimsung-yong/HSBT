package mapper;

import domain.Criteria;
import domain.review.ReviewReplyVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReviewReplyMapper {
    public int insert(ReviewReplyVO vo);
    public ReviewReplyVO read(Long r_no);
    public int delete(Long r_no);
    public int update(ReviewReplyVO reply);
    public List<ReviewReplyVO> getListWithPaging(
            @Param("cri") Criteria cri,
            @Param("r_no") Long r_no);
    public int getCountByR_no(Long r_no);
}
