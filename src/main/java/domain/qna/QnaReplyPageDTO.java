package domain.qna;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

import java.util.List;

@Data
@AllArgsConstructor
@Getter
public class QnaReplyPageDTO {
    private int replyCnt;
    private List<QnaReplyVO> list;
}
