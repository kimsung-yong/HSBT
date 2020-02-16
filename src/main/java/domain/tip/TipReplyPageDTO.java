package domain.tip;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

import java.util.List;

@Data
@AllArgsConstructor
@Getter
public class TipReplyPageDTO {
    private int replyCnt;
    private List<TipReplyVO> list;
}
