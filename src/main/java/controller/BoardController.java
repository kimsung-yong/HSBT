package controller;

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board/freeboard/*")
@Log4j
public class BoardController {
    @GetMapping("/list")
    public void list() {
//
    }
}
