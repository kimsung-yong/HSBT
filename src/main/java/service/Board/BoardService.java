package service.Board;

import domain.BoardVO;

import java.util.List;

public interface BoardService {

    public List<BoardVO> read();

    public BoardVO get(Long BN);

    public void regster(BoardVO vo);

    public boolean modify(BoardVO vo);

    public void remove(Long BN);
}
