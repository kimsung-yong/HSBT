package service.Board;

import domain.Criteria;
import domain.board.BoardReplyPageDTO;
import domain.board.BoardReplyVO;
import org.springframework.stereotype.Service;

import java.util.List;


public interface BoardReplyService {

    public int register(BoardReplyVO vo);

    public BoardReplyVO get(Long br_no);

    public int modify(BoardReplyVO vo);

    public int remove(Long br_no);

    public List<BoardReplyVO> getList(Criteria cri,Long b_no);

    public BoardReplyPageDTO getListPage(Criteria cri,Long b_no);



}
