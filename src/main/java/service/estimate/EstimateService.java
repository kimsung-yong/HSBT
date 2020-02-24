package service.estimate;

import domain.estimate.EstimateVO;

import java.util.List;

public interface EstimateService {
    public int register(EstimateVO est);
    public EstimateVO get(Long e_no);
    public int modify(EstimateVO est);
    public int delete(Long e_no);
    public List<EstimateVO> getList(String id);
}
