package controller.board;

import domain.Criteria;
import domain.board.BoardReplyPageDTO;
import domain.board.BoardReplyVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import service.Board.BoardReplyService;

import java.util.List;

@RequestMapping("/board/freeboardreplies/")
@RestController
@Log4j
@AllArgsConstructor
public class BoardReplyController {

    private BoardReplyService service;

    @PostMapping(value = "/new",consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> create(@RequestBody BoardReplyVO vo){

        log.info("ReplyVO :" + vo);

        int insertCount = service.register(vo);

        log.info("Reply Insert count " + insertCount);
        //삼항 연산자 count가 1이면 등록 성공
        return insertCount == 1? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
    @GetMapping(value = "/pages/{b_no}/{page}",produces = {MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<BoardReplyPageDTO> getList(@PathVariable("page")int page, @PathVariable("b_no") Long b_no){
        log.info("getList....");
        Criteria cri = new Criteria(page,10);
        log.info(cri);

        return new ResponseEntity<>(service.getListPage(cri,b_no), HttpStatus.OK);
    }
    @GetMapping(value = "/{br_no}",produces = {MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<BoardReplyVO> get(@PathVariable("br_no") Long br_no){
        log.info("get:" + br_no);
        return new ResponseEntity<>(service.get(br_no),HttpStatus.OK);
    }
    @DeleteMapping(value = "/{br_no}",produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> remove(@PathVariable("br_no") Long br_no){
        log.info("get:" + br_no);
        return service.remove(br_no) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) :
                new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
    @RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH},value = "/{br_no}", consumes = "application/json",
            produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> modify(@RequestBody BoardReplyVO vo, @PathVariable("br_no") Long br_no){
        vo.setBr_no(br_no);
        log.info("br_no"+br_no);

        return service.modify(vo) == 1 ? new ResponseEntity<>("success",HttpStatus.OK) :
                new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
