package service.notice;

import domain.notice.NoticeVO;

import java.util.List;

public interface NoticeService {
    public void register(NoticeVO notice);
    public NoticeVO get(Long n_no);
    public boolean modify(NoticeVO notice);
    public boolean remove(Long n_no);
    public List<NoticeVO> getList();
}
