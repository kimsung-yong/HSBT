package mapper;

import domain.BoardVO;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface BoardMapper {

    public List<BoardVO> getList();
    public BoardVO getListSelect(Long b_no);
    public void insert(BoardVO vo);
    public void update(BoardVO vo);
    public void delete(Long b_no);



}
