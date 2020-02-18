package service.notice;

import domain.Criteria;
import domain.notice.NoticeVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mapper.NoticeMapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Log4j
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {
    private NoticeMapper mapper;

    @Override
    public void register(NoticeVO notice) {
        mapper.insertSelectKey(notice);
    }

    @Override
    public NoticeVO get(Long n_no) {
        return mapper.read(n_no);
    }

    @Override
    public boolean modify(NoticeVO notice) {
        return mapper.update(notice) == 1;
    }

    @Override
    public boolean remove(Long n_no) {
        return mapper.delete(n_no) == 1;
    }

    @Override
    public List<NoticeVO> getList(Criteria cri) {
        return mapper.getListWithPaging(cri);
    }

    @Override
    public int total() {
        return mapper.getCount();
    }
}
