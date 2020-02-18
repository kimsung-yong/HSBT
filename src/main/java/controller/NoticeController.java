package controller;

import domain.notice.NoticeVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.notice.NoticeService;

@Controller
@RequestMapping("/board/noticeboard/*")
@Log4j
@AllArgsConstructor
public class NoticeController {
    private NoticeService service;

    @GetMapping("/list")
    public void list(Model model) {
        model.addAttribute("list", service.getList());
    }

    @PostMapping("/register")
    public void register(NoticeVO notice, RedirectAttributes rttr) {
        service.register(notice);
        rttr.addAttribute("result", notice.getN_no());
    }
}
