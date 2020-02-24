package controller;

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


    @RequestMapping("/intro/introduce")
    public String introduce(){ return "/intro/company/introduce"; }
    @RequestMapping("/intro/history")
    public String history(){
        return "/intro/company/history";
    }
    @RequestMapping("/intro/map")
    public String map(){      return "/intro/company/map";   }

    @RequestMapping("/material/tile")
    public String tile() { return "/material/tile"; }
    @RequestMapping("/material/wallpaper")
    public String wallpaper() { return "/material/wallpaper"; }
    @RequestMapping("/material/window")
    public String window() { return "/material/window"; }
    @RequestMapping("/material/paint")
    public String paint() { return "/material/paint"; }
//    @RequestMapping("/member/login")
//    public String login(){return "/member/login";}
//    @RequestMapping("/member/join")
//    public String join(){return "member/join";}
//    @RequestMapping("/member/loginActon")
//    public String loginAction(){return "member/loginAction";}
}
