package controller;

import domain.ReviewVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.review.ReviewService;

@Controller
@RequestMapping("/board/reviewboard/*")
@Log4j
@AllArgsConstructor
public class ReviewController {
    private ReviewService service;

    @GetMapping("/list")
    public void list(Model model) {
        log.info("list......");
        model.addAttribute("list",service.getList());
    }
    @GetMapping("/register")
    public void register(){
        log.info("register..........");
    }

    @PostMapping("/register")
    public String register(ReviewVO review, RedirectAttributes rttr){
        log.info("register...post :"+review);
        service.register(review);
        rttr.addFlashAttribute("result",review.getR_no());
        return "redirect:/board/reviewboard/list";
    }

    @GetMapping("/get")
    public void get(@RequestParam("r_no") Long r_no,Model model){
        log.info("/get");
        model.addAttribute("review",service.get(r_no));
    }


}
