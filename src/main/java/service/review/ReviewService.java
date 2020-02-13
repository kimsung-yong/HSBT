package service.review;

import domain.ReviewVO;

import java.util.List;

public interface ReviewService {
    public List<ReviewVO> getList();
    //    public List<BoardVO> getList(Criteria cri);

    public void register(ReviewVO review);
    public ReviewVO get(Long r_no);
    public boolean modify(ReviewVO review);
    public boolean remove(Long r_no);
}
