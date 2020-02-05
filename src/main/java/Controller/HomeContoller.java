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
        return "/board/index";
    }
    @RequestMapping("/board/reg")
    public String insert(){
        return "/board/register";
    }
}
