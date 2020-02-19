package domain.review;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

import java.util.List;

@Data
@AllArgsConstructor
@Getter
public class ReviewReplyPageDTO {
    private int replyCnt;
    private List<ReviewReplyVO> list;
}