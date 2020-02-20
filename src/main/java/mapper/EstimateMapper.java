package mapper;

import domain.estimate.EstimateVO;

import java.util.List;

public interface EstimateMapper {
    public List<EstimateVO> getList();
    public int insert(EstimateVO est);
    public EstimateVO read(Long e_no);
    public int delete(Long e_no);
    public int update(EstimateVO est);
}
