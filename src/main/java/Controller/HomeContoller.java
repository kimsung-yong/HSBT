package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeContoller {
    @RequestMapping("/")
    public String home(){
        return "index";
    }
    @RequestMapping("/board/index")
    public String my(){
        return "index";
    }
//    @RequestMapping("/board/reg")
//    public String insert(){
//        return "/board/register";
//    }
//    @RequestMapping("/board/list")
//    public String list(){
//        return "board/noticeBoard/list";
//    }

    @RequestMapping("/intro/introduce")
    public String introduce(){ return "/intro/company/introduce"; }
    @RequestMapping("/intro/history")
    public String history(){
        return "/intro/company/history";
    }
}
