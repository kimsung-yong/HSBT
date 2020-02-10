package service;

import domain.ReviewVO;

import java.util.List;

public interface reviewService {
    public void register(ReviewVO review);
    public ReviewVO get(Long rNo);
    public boolean modify(ReviewVO review);
    public boolean remove(Long rNo);
    public List<ReviewVO> getList();
//    public List<BoardVO> getList(Criteria cri);
}
