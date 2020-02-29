package mapper;

import domain.Criteria;
import domain.estimate.EstimateVO;

import java.util.List;

public interface EstimateMapper {
    public List<EstimateVO> getList(String id);
    public int insert(EstimateVO est);
    public EstimateVO read(Long e_no);
    public int delete(Long e_no);
    public int update(EstimateVO est);
    public List<EstimateVO> getListWithPaging(Criteria cri);
    public int total();
}
