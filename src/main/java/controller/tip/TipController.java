package controller.tip;

import domain.Criteria;
import domain.PageDTO;
import domain.tip.TipVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.tip.TipService;

@Controller
@RequestMapping("/board/tipboard/*")
@Log4j
@AllArgsConstructor
public class TipController {
    private TipService service;

    /*@GetMapping("/list")
    public void list(Model model) {
        *//*log.info("list");*//*
        model.addAttribute("list", service.getList());
    }*/
    @GetMapping("/list")
    public void list(Criteria cri, Model model) {
        /*log.info("list : " + cri);*/
        model.addAttribute("list", service.getList(cri));

        int total = service.getTotalCount(cri);
        model.addAttribute("pageMaker", new PageDTO(cri, total));
    }

    @PostMapping("/register")
    public String register(TipVO tipVO, RedirectAttributes rttr) {
        /*log.info("register......." + tipVO);*/
        service.register(tipVO);
        rttr.addAttribute("result", tipVO.getT_no());
        return "redirect:/board/tipboard/list";
    }

    @GetMapping("/register")
    public void register(TipVO tipVO) {
        /*log.info("register......." + tipVO);*/
    }

    @GetMapping({"/get", "/modify"})
    public void get(@RequestParam("t_no") Long t_no, @ModelAttribute("cri") Criteria cri, Model model) {
        /*log.info("/get or modify");*/
        model.addAttribute("tip", service.get(t_no));

    }

    @PostMapping("/modify")
    public String modify(TipVO tipVO, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
        /*log.info("modify : " + tipVO);*/

        if(service.modify(tipVO)) {
            rttr.addFlashAttribute("result", "success");
        }
        return "redirect:/board/tipboard/list" + cri.getListLink();
    }

    @PostMapping("/remove")
    public String remove(@RequestParam("t_no") Long t_no, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
        /*log.info("remove...." + t_no);*/

        if(service.remove(t_no)) {
            rttr.addFlashAttribute("result", "success");
        }
        return "redirect:/board/tipboard/list" + cri.getListLink();
    }
}
