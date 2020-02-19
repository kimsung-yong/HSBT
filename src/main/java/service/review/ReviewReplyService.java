package service.review;

import domain.Criteria;
import domain.review.ReviewReplyPageDTO;
import domain.review.ReviewReplyVO;

import java.util.List;

public interface ReviewReplyService {
    public int register(ReviewReplyVO vo);
    public ReviewReplyVO get(Long rr_no);
    public int modify(ReviewReplyVO vo);
    public int remove(Long rr_no);
    public List<ReviewReplyVO> getList(Criteria cri, Long r_no);
    public ReviewReplyPageDTO getListPage(Criteria cri, Long r_no);
}
