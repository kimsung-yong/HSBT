package service.Board;

import domain.BoardVO;
import domain.Criteria;

import java.util.List;

public interface BoardService {

    public List<BoardVO> read(Criteria cri);

    public BoardVO get(Long BN);

    public void regster(BoardVO vo);

    public boolean modify(BoardVO vo);

    public void remove(Long BN);

    public int total(Criteria cri);
}
