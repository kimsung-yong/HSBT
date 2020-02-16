package service.Board;

import domain.board.BoardVO;
import domain.Criteria;
import lombok.Setter;
import mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImp implements BoardService{
    @Setter(onMethod_ = @Autowired)
    BoardMapper mapper;

    @Override
    public List<BoardVO> read(Criteria cri) {
        return mapper.getListWithPaging(cri);
    }

    @Override
    public BoardVO get(Long BN) {
        return mapper.getListSelect(BN);
    }

    @Override
    public void regster(BoardVO vo) {

        mapper.insertSelectkey(vo);
    }

    @Override
    public boolean modify(BoardVO vo) {
        mapper.update(vo);
        return true;
    }

    @Override
    public void remove(Long BN) {
        mapper.delete(BN);
    }

    @Override
    public int total(Criteria cri) {
        return mapper.getCount(cri);
    }
}
