package service.review;

import domain.Criteria;
import domain.review.ReviewVO;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mapper.ReviewMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Log4j
@Service
@AllArgsConstructor
public class reviewServiceImpl implements ReviewService {
    @Setter (onMethod_ = @Autowired)
    private ReviewMapper mapper;

    @Override
    public void register(ReviewVO review) {
        log.info("......register: "+review);
        mapper.insertSelectKey(review);
    }

    @Override
    public ReviewVO get(Long r_no) {
        log.info("get..............!!"+r_no);
        return mapper.read(r_no);
    }

    @Override
    public boolean modify(ReviewVO review) {
        log.info("modify.............!"+review);
        return mapper.update(review)==1 ;
    }

    @Override
    public boolean remove(Long r_no) {
        log.info("remove...............!!"+r_no);
        return mapper.delete(r_no)==1 ;
    }

    @Override
    public List<ReviewVO> getList(Criteria cri) {
        return mapper.getListWithPaging(cri);
    }

    @Override
    public int getTotal(Criteria cri) {
        return mapper.getTotalCount(cri);
    }
}