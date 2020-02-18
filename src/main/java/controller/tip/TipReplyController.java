package controller.tip;

import domain.Criteria;
import domain.tip.TipReplyPageDTO;
import domain.tip.TipReplyVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import service.tip.TipReplyService;

@RequestMapping("/tip/replies/*")
@RestController
@Log4j
@AllArgsConstructor
public class TipReplyController {
    private TipReplyService service;

    @PostMapping(value = "/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> create(@RequestBody TipReplyVO vo) {
//        log.info("TipReplyVO : " + vo);

        int insertCount = service.register(vo);

//        log.info("Reply INSERT COUNT : " + insertCount);

        return insertCount == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @GetMapping(value = "/pages/{t_no}/{page}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
    public ResponseEntity<TipReplyPageDTO> getList(@PathVariable("page") int page, @PathVariable("t_no") Long t_no) {
//        log.info("getList...........");
        Criteria cri = new Criteria(page, 10);
//        log.info(cri);

        return new ResponseEntity<>(service.getListPage(cri, t_no), HttpStatus.OK);
    }

    @GetMapping(value = "/{tr_no}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
    public ResponseEntity<TipReplyVO> get(@PathVariable("tr_no") Long tr_no) {
//        log.info("get : " + tr_no);
        return new ResponseEntity<>(service.get(tr_no), HttpStatus.OK);
    }

    @DeleteMapping(value = "/{tr_no}", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> remove(@PathVariable("tr_no") Long tr_no) {
//        log.info("remove : " + tr_no);
        return service.remove(tr_no) == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, value = "/{tr_no}",
            consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> modify(@RequestBody TipReplyVO vo, @PathVariable("tr_no") Long tr_no) {
        vo.setTr_no(tr_no);

//        log.info("tr_no : " + tr_no);
//        log.info("modify : " + vo);

        return service.modify(vo) == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
