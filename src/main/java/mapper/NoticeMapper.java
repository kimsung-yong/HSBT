package mapper;

import domain.Criteria;
import domain.board.BoardVO;
import domain.notice.NoticeVO;

import java.util.List;

public interface NoticeMapper {
    public List<NoticeVO> getList();
    public List<NoticeVO> getListWithPaging(Criteria cri);
    public void insert(NoticeVO notice);
    public void insertSelectKey(NoticeVO notice);
    public NoticeVO read(Long n_no);
    public int delete(Long n_no);
    public int update(NoticeVO notice);
    public int getCount();
}
