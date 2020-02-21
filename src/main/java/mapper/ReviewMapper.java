package mapper;

import domain.Criteria;
import domain.review.ReviewVO;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface ReviewMapper {

    public List<ReviewVO> getList();
    public List<ReviewVO> getListWithPaging(Criteria cri);
    public int getTotalCount(Criteria cri);

    public void insert(ReviewVO review);
    public void insertSelectKey(ReviewVO review);
    public ReviewVO read(Long r_no);
    public int delete(Long r_no);
    public int update(ReviewVO review);

    public void updateReplyCnt(@Param("r_no") Long r_no, @Param("amount") int amount);

}
