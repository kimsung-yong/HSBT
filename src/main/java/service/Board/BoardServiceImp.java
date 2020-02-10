package service.Board;

import domain.BoardVO;
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
    public List<BoardVO> read() {
        return mapper.getList();
    }

    @Override
    public BoardVO get(Long BN) {
        return mapper.getListSelect(BN);
    }

    @Override
    public void regster(BoardVO vo) {

        mapper.insert(vo);
    }

    @Override
    public void modify(BoardVO vo) {
        mapper.update(vo);
    }

    @Override
    public void remove(Long BN) {
        mapper.delete(BN);
    }
}
