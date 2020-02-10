package controller;

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board/noticeboard/*")
@Log4j
public class NoticeController {
    @GetMapping("/list")
    public void list() {
//
    }
}
