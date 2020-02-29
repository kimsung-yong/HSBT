package controller.estimate;

import domain.estimate.EstimateVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import service.estimate.EstimateService;

import java.util.List;

// 유저 견적 신청 관리 컨트롤러
@RestController
@Log4j
@AllArgsConstructor
public class EstimateController {
    private EstimateService service;

    @GetMapping(value = "/member/memberInfo/get/{e_no}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
    public ResponseEntity<EstimateVO> get(@PathVariable("e_no") Long e_no) {
        return new ResponseEntity<>(service.get(e_no), HttpStatus.OK);
    }

    @GetMapping(value = "/member/memberInfo/{id}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
    public ResponseEntity<List<EstimateVO>> getList(@PathVariable("id") String id) {
        return new ResponseEntity<>(service.getList(id), HttpStatus.OK);
    }

    @PostMapping(value = "/", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> register(@RequestBody EstimateVO est) {
        int insertCount = service.register(est);

        return insertCount == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @DeleteMapping(value = "/member/memberInfo/{e_no}", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> remove(@PathVariable("e_no") Long e_no) {
        return service.delete(e_no) == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @RequestMapping(method = { RequestMethod.PUT, RequestMethod.PATCH }, value = "/member/memberInfo/{e_no}", consumes = "application/json",
        produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> modify(@RequestBody EstimateVO est, @PathVariable("e_no") Long e_no) {
        est.setE_no(e_no);
        return service.modify(est) == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
