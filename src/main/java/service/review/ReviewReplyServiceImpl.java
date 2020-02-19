package service.review;

import domain.Criteria;
import domain.review.ReviewReplyPageDTO;
import domain.review.ReviewReplyVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mapper.ReviewReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Log4j
public class ReviewReplyServiceImpl implements ReviewReplyService{
    @Setter(onMethod_ = @Autowired)
    private ReviewReplyMapper mapper;

    @Override
    public int register(ReviewReplyVO vo) {
        return mapper.insert(vo);
    }

    @Override
    public ReviewReplyVO get(Long rr_no) {
        return mapper.read(rr_no);
    }

    @Override
    public int modify(ReviewReplyVO vo) {
        return mapper.update(vo);
    }

    @Override
    public int remove(Long rr_no) {
        return mapper.delete(rr_no);
    }

    @Override
    public List<ReviewReplyVO> getList(Criteria cri, Long r_no) {
        return mapper.getListWithPaging(cri, r_no);
    }

    @Override
    public ReviewReplyPageDTO getListPage(Criteria cri, Long r_no) {
        return new ReviewReplyPageDTO(
                mapper.getCountByR_no(r_no),
                mapper.getListWithPaging(cri,r_no));
    }
}
