package Controller;

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {
    @GetMapping({"/noticeboard/list","/freeboard/list","/qnaboard/list","/reviewboard/list","/tipboard/list"})
    public void list() {
//
    }
}
