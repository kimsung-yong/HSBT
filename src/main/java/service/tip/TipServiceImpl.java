package service.tip;

import domain.Criteria;
import domain.tip.TipVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mapper.TipMapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Log4j
@Service
@AllArgsConstructor
public class TipServiceImpl implements TipService {
    private TipMapper mapper;

    @Override
    public void register(TipVO tipVO) {
        //log.info("register......" + tipVO);
        mapper.insertSelectKey(tipVO);
    }

    @Override
    public TipVO get(Long t_no) {
        //log.info("get........." + t_no);
        return mapper.read(t_no);
    }

    @Override
    public boolean modify(TipVO tipVO) {
        //log.info("modify............." + tipVO);
        return mapper.update(tipVO) == 1;
    }

    @Override
    public boolean remove(Long t_no) {
        //log.info("remove............." + t_no);
        return mapper.delete(t_no) == 1;
    }

    /*@Override
    public List<TipVO> getList() {
        log.info("getList...............");
        return mapper.getList();
    }*/

    @Override
    public List<TipVO> getList(Criteria cri) {
        //log.info("get List with criteria : " + cri);
        return mapper.getListWithPaging(cri);
    }

    @Override
    public int getTotalCount(Criteria cri) {
        return mapper.getTotalCount(cri);
    }
}
