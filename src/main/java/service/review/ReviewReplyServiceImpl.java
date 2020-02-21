package service.review;

import domain.Criteria;
import domain.review.ReviewReplyPageDTO;
import domain.review.ReviewReplyVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mapper.ReviewMapper;
import mapper.ReviewReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Log4j
public class ReviewReplyServiceImpl implements ReviewReplyService{
    @Setter(onMethod_ = @Autowired)
    private ReviewReplyMapper mapper;

    @Setter(onMethod_ = @Autowired)
    private ReviewMapper reviewMapper;

    @Transactional
    @Override
    public int register(ReviewReplyVO vo) {
        reviewMapper.updateReplyCnt(vo.getR_no(),1);
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

    @Transactional
    @Override
    public int remove(Long rr_no) {
        ReviewReplyVO vo = mapper.read(rr_no);
        reviewMapper.updateReplyCnt(vo.getR_no(),-1);
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
