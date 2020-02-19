package controller.review;

import domain.Criteria;
import domain.review.ReviewReplyPageDTO;
import domain.review.ReviewReplyVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import service.review.ReviewReplyService;

import java.util.List;

@RequestMapping("/review/reviewReplies/*")
@RestController
@Log4j
@AllArgsConstructor
public class ReviewReplyController {
    private ReviewReplyService service;

//  등록작업
    @PostMapping(value = "/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> create(@RequestBody ReviewReplyVO vo){
        int insertCount = service.register(vo);
        return insertCount==1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
//  특정 게시물 댓글 목록확인
    @GetMapping(value = "/pages/{r_no}/{page}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<ReviewReplyPageDTO> getList(@PathVariable("page") int page, @PathVariable("r_no")Long r_no){
        Criteria cri = new Criteria(page,10);
        return new ResponseEntity<>(service.getListPage(cri, r_no), HttpStatus.OK);
    }
//  댓글 조회
    @GetMapping(value = "/{rr_no}", produces = {MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<ReviewReplyVO> get(@PathVariable("rr_no")Long rr_no){
        return new ResponseEntity<>(service.get(rr_no),HttpStatus.OK);
    }
//  댓글 삭제
    @DeleteMapping(value = "/{rr_no}", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> remove(@PathVariable("rr_no")Long rr_no){
        return service.remove(rr_no)==1?
                new ResponseEntity<>("success",HttpStatus.OK)
              : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
//  댓글 수정
    @RequestMapping(method = {RequestMethod.PUT,RequestMethod.PATCH},value = "/{rr_no}",
            consumes = "application/json",produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> modify(@RequestBody ReviewReplyVO vo, @PathVariable("rr_no")Long rr_no){
        vo.setRr_no(rr_no);
        return service.modify(vo) == 1 ?
                new ResponseEntity<>("success",HttpStatus.OK)
             :  new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

}
