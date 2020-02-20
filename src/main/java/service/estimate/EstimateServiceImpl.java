package service.estimate;

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
    public boolean modify(EstimateVO est) {
        return mapper.update(est) == 1;
    }

    @Override
    public boolean delete(Long e_no) {
        return mapper.delete(e_no) == 1;
    }

    @Override
    public List<EstimateVO> getList() {
        return mapper.getList();
    }
}
