package mapper;

import domain.Criteria;
import domain.board.BoardReplyVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BoardReplyMapper {

    public int insert(BoardReplyVO vo);

    public BoardReplyVO read(Long b_no);

    public int delete(Long br_no);

    public int update(BoardReplyVO vo);

    public List<BoardReplyVO> getListWithPaging(@Param("cri")Criteria cri, @Param("b_no") Long b_no);

    public int getCountByBno(Long b_no);
}
