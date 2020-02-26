package controller.board;

import domain.user.UserVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import service.Board.UserService;

@RestController
@Log4j
@AllArgsConstructor
public class UserControllerNoh {
    private UserService service;

    @RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, value = "/member/memberInfo/mod{id}",
            consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> modify(@RequestBody UserVO vo, @PathVariable("id") String id) {
        vo.setId(id);
        return service.update(vo) == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @DeleteMapping(value = "/member/memberInfo/del{id}", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> remove(@PathVariable("id") String id) {
        return service.delete(id) == 1
                ? new ResponseEntity<>("success", HttpStatus.OK)
                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
