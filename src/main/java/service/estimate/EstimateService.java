package service.estimate;

import domain.estimate.EstimateVO;

import java.util.List;

public interface EstimateService {
    public int register(EstimateVO est);
    public EstimateVO get(Long e_no);
    public boolean modify(EstimateVO est);
    public boolean delete(Long e_no);
    public List<EstimateVO> getList();
}
