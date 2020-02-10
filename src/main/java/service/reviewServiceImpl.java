package service;

import domain.ReviewVO;
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
    public ReviewVO get(Long rNo) {
        return null;
    }

    @Override
    public boolean modify(ReviewVO review) {
        return false;
    }

    @Override
    public boolean remove(Long rNo) {
        return false;
    }

    @Override
    public List<ReviewVO> getList() {
        return null;
    }
}
