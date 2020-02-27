package controller.board;

import domain.user.UserVO;
import jdk.jfr.ContentType;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import service.Board.UserService;

import javax.servlet.http.HttpSession;

@RestController
@Log4j
@AllArgsConstructor
public class UserControllerNoh {
    private UserService service;
    private HttpSession session;

    @RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, value = "/member/memberInfo/mod{id}",
            consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> modify(@RequestBody UserVO user, @PathVariable("id") String id) {
        user.setId(id);
        return service.update2(user) == 1
                ? new ResponseEntity<>("수정완료. 다시 로그인해주세요.", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @DeleteMapping(value = "/member/memberInfo/del{id}", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> remove(@PathVariable("id") String id) {
        return service.delete(id) == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
