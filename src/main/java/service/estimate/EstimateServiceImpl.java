package service.estimate;

import domain.Criteria;
import domain.estimate.EstimateVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mapper.EstimateMapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Log4j
@AllArgsConstructor
public class EstimateServiceImpl implements EstimateService {
    private EstimateMapper mapper;

    @Override
    public int register(EstimateVO est) {
        return mapper.insert(est);
    }

    @Override
    public EstimateVO get(Long e_no) {
        return mapper.read(e_no);
    }

    @Override
    public int modify(EstimateVO est) {
        return mapper.update(est);
    }

    @Override
    public int delete(Long e_no) {
        return mapper.delete(e_no);
    }

    @Override
    public List<EstimateVO> getList(String id) {
        return mapper.getList(id);
    }

    @Override
    public List<EstimateVO> getListWithPaging(Criteria cri) {
        return mapper.getListWithPaging(cri);
    }

    @Override
    public int total() {
        return mapper.total();
    }

}
