package mapper;

import domain.ReviewVO;


import java.util.List;

public interface ReviewMapper {

    public List<ReviewVO> getList();

    public void insert(ReviewVO review);
    public void insertSelectKey(ReviewVO review);
    public ReviewVO read(Long r_no);
    public int delete(Long r_no);
    public int update(ReviewVO review);


}
