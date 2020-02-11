package controller;

import domain.TipVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.TipService;

@Controller
@RequestMapping("/board/tipboard/*")
@Log4j
@AllArgsConstructor
public class TipController {
    private TipService service;

    @GetMapping("/list")
    public void list(Model model) {
        /*log.info("list");*/
        model.addAttribute("list", service.getList());
    }

    @PostMapping("/register")
    public String register(TipVO tipVO, RedirectAttributes rttr) {
        log.info("register......." + tipVO);
        service.register(tipVO);
        rttr.addAttribute("result", tipVO.getT_no());
        return "redirect:/board/tipboard/list";
    }

    @GetMapping("/register")
    public String register1(TipVO tipVO) {
        log.info("register......." + tipVO);
        return "/board/tipboard/register";
    }

    @GetMapping("/get")
    public void get(@RequestParam("t_no") Long t_no, Model model) {
        log.info("/get");
        model.addAttribute("tip", service.get(t_no));
    }
}
