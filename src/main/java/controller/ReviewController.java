package controller;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
