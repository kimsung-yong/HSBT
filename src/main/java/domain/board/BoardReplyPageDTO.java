package domain.board;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

import java.util.List;

@Data
@AllArgsConstructor
@Getter
public class BoardReplyPageDTO {
    private int replyCnt;
    private List<BoardReplyVO> list;
}
