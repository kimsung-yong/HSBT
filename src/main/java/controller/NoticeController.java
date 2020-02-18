package controller;

import domain.notice.NoticeVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    public String register(NoticeVO notice, RedirectAttributes rttr) {
        service.register(notice);
        rttr.addFlashAttribute("result", notice.getN_no());
        return "redirect:/board/noticeboard/list";
    }

    @GetMapping("/get")
    public void get(@RequestParam("n_no") Long n_no, Model model) {
        model.addAttribute("notice", service.get(n_no));
    }

    @PostMapping("/modify")
    public String modify(NoticeVO notice, RedirectAttributes rttr) {
        if(service.modify(notice)) {
            rttr.addFlashAttribute("result", "success");
        }
        return "redirect:/board/noticeboard/list";
    }

    @PostMapping("/remove")
    public String remove(@RequestParam("n_no") Long n_no, RedirectAttributes rttr) {
        if(service.remove(n_no)) {
            rttr.addFlashAttribute("result", "success");
        }
        return "redirect:/board/noticeboard/list";
    }
}
