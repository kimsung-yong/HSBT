package controller.review;

import domain.Criteria;
import domain.PageDTO;
import domain.review.ReviewVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.review.ReviewService;

@Controller
@RequestMapping("/board/reviewboard/*")
@Log4j
@AllArgsConstructor
public class ReviewController {
    private ReviewService service;

    @GetMapping("/list")
    public void list(Criteria cri, Model model) {
        model.addAttribute("list",service.getList(cri));

        int total = service.getTotal(cri);
        log.info("total..........:"+ total);
        model.addAttribute("pageMaker",new PageDTO(cri,total));
    }
    @GetMapping("/register")
    public void register(){
        log.info("register..........:");
    }

    @PostMapping("/register")
    public String register(ReviewVO review, RedirectAttributes rttr){
        log.info("register post..........:"+review);
        service.register(review);
        rttr.addFlashAttribute("result",review.getR_no());
        return "redirect:/board/reviewboard/list";
    }

    @GetMapping({"/get","/modify"})
    public void get(@RequestParam("r_no") Long r_no, @ModelAttribute("cri")Criteria cri, Model model){
        log.info("/get or modify");
        model.addAttribute("review",service.get(r_no));
    }

    @PostMapping("/modify")
    public String modify(ReviewVO reviewVO, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {

        if(service.modify(reviewVO)) {
            rttr.addFlashAttribute("result", "success");
        }

        rttr.addAttribute("pageNum", cri.getPageNum());
        rttr.addAttribute("amount", cri.getAmount());

        return "redirect:/board/reviewboard/list";
    }

    @PostMapping("/remove")
    public String remove(@RequestParam("r_no")Long r_no, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr){
        if(service.remove(r_no)){
            rttr.addFlashAttribute("result","success");
        }
        /*rttr.addAttribute("pageNum", cri.getPageNum());
        rttr.addAttribute("amount", cri.getAmount());*/


        return "redirect:/board/reviewboard/list";
    }

}
