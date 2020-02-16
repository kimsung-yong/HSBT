package service.review;

import domain.Criteria;
import domain.review.ReviewVO;

import java.util.List;

public interface ReviewService {
//    public List<ReviewVO> getList();
    public List<ReviewVO> getList(Criteria cri);
    public int getTotal(Criteria cri);

    public void register(ReviewVO review);
    public ReviewVO get(Long r_no);
    public boolean modify(ReviewVO review);
    public boolean remove(Long r_no);
}
