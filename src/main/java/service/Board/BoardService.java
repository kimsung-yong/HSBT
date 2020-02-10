package service.Board;

import domain.BoardVO;
import org.springframework.stereotype.Service;

import java.util.List;

public interface BoardService {

    public List<BoardVO> read();

    public BoardVO get(Long BN);

    public void regster(BoardVO vo);

    public void modify(BoardVO vo);

    public void remove(Long BN);
}
