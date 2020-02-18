package controller.qna;

import domain.Criteria;
import domain.qna.QnaReplyPageDTO;
import domain.qna.QnaReplyVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import service.qna.QnaReplyService;

import java.util.List;

@RestController
@RequestMapping("/qna/replies/*")
@Log4j
@AllArgsConstructor
public class QnaReplyController {
    private QnaReplyService service;

    @PostMapping(value = "/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> create(@RequestBody QnaReplyVO vo) {
        int insertCount = service.register(vo);
        return insertCount == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @GetMapping(value = "/pages/{q_no}/{page}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
    public ResponseEntity<QnaReplyPageDTO> getList(@PathVariable("page") int page, @PathVariable("q_no") Long q_no) {
        Criteria cri = new Criteria(page, 10);
        return new ResponseEntity<>(service.getListPage(cri, q_no), HttpStatus.OK);
    }

    @GetMapping(value = "/{qr_no}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
    public ResponseEntity<QnaReplyVO> get(@PathVariable("qr_no") Long qr_no) {
        return new ResponseEntity<>(service.get(qr_no), HttpStatus.OK);
    }

    @DeleteMapping(value = "/{qr_no}", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> remove(@PathVariable("qr_no") Long qr_no) {
        return service.remove(qr_no) == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, value = "/{qr_no}", consumes = "application/json",
        produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> modify(@RequestBody QnaReplyVO vo, @PathVariable("qr_no") Long qr_no) {
        vo.setQr_no(qr_no);
        return service.modify(vo) == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
