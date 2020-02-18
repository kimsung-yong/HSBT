package controller.notice;

import domain.Criteria;
import domain.PageDTO;
import domain.notice.NoticeVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.notice.NoticeService;

@Controller
@RequestMapping("/board/noticeboard/*")
@Log4j
@AllArgsConstructor
public class NoticeController {

    private NoticeService service;

    @GetMapping("/list")
    public void list(Model model, Criteria cri) {
        model.addAttribute("list", service.getList(cri));
        model.addAttribute("pageMaker",new PageDTO(cri,service.total()));
    }
    @GetMapping("/register")
    public void register(){

    }
    @PostMapping("/register")
    public String register(NoticeVO notice, RedirectAttributes rttr) {
        service.register(notice);
        rttr.addFlashAttribute("result", notice.getN_no());
        return "redirect:/board/noticeboard/list";
    }

    @GetMapping({"/get","/modify"})
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
