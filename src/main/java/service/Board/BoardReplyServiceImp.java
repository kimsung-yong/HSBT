package service.Board;

import domain.Criteria;
import domain.board.BoardReplyPageDTO;
import domain.board.BoardReplyVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mapper.BoardMapper;
import mapper.BoardReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Log4j
public class BoardReplyServiceImp implements BoardReplyService{
    @Setter(onMethod_ = @Autowired)
    private BoardReplyMapper mapper;

    @Setter(onMethod_ = @Autowired)
    private BoardMapper boardMapper;
    @Transactional
    @Override
    public int register(BoardReplyVO vo) {
        boardMapper.updateReplyCnt(vo.getB_no(),1);
        return mapper.insert(vo);
    }

    @Override
    public BoardReplyVO get(Long br_no) {
        return mapper.read(br_no);
    }

    @Override
    public int modify(BoardReplyVO vo) {
        return mapper.update(vo);
    }
    @Transactional
    @Override
    public int remove(Long br_no) {
        BoardReplyVO vo = mapper.read(br_no);
        boardMapper.updateReplyCnt(vo.getB_no(),-1);
        return mapper.delete(br_no);
    }

    @Override
    public List<BoardReplyVO> getList(Criteria cri, Long b_no) {
        return mapper.getListWithPaging(cri,b_no);
    }

    @Override
    public BoardReplyPageDTO getListPage(Criteria cri, Long b_no) {

        return new BoardReplyPageDTO(
                mapper.getCountByBno(b_no),
                mapper.getListWithPaging(cri,b_no)
        );
    }
}
