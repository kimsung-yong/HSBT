package controller.qna;

import domain.Criteria;
import domain.PageDTO;
import domain.qna.QnaVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.qna.QnaService;

@Controller
@Log4j
@RequestMapping("/board/qnaboard/*")
@AllArgsConstructor
public class QnaController {
    private QnaService service;

//    @GetMapping("/list")
//    public void list(Model model) {
//        model.addAttribute("list", service.getList());
//    }
    @GetMapping("/list")
    public void list(Criteria cri, Model model) {
        model.addAttribute("list", service.getList(cri));

        int total = service.getTotal(cri);

        model.addAttribute("pageMaker", new PageDTO(cri, total));
    }

    @GetMapping("/register")
    public void register() {

    }

    @PostMapping("/register")
    public String register(QnaVO qna, RedirectAttributes rttr) {
        service.register(qna);
        rttr.addFlashAttribute("result", qna.getQ_no());
        return "redirect:/board/qnaboard/list";
    }

    @GetMapping({"/get", "/modify"})
    public void get(@RequestParam("q_no") Long q_no, @ModelAttribute("cri") Criteria cri, Model model) {
        model.addAttribute("qna", service.get(q_no));
    }

    @PostMapping("/modify")
    public String modify(QnaVO qna, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
        if(service.modify(qna)) {
            rttr.addFlashAttribute("result", "success");
        }
        return "redirect:/board/qnaboard/list" + cri.getListLink();
    }

    @PostMapping("/remove")
    public String remove(@RequestParam("q_no") Long q_no, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
        if(service.remove(q_no)) {
            rttr.addFlashAttribute("result", "success");
        }
        return "redirect:/board/qnaboard/list" + cri.getListLink();
    }
}
