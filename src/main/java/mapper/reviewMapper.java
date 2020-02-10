package mapper;

import domain.ReviewVO;


import java.util.List;

public interface reviewMapper {

    public List<ReviewVO> getList();

    public void insert(ReviewVO review);
    public void insertSelectKey(ReviewVO review);
    public ReviewVO read(Long rNo);
    public int delete(Long rNo);
    public int update(ReviewVO review);


}
