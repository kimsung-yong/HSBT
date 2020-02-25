package controller.board;

import domain.user.UserVO;
import lombok.AllArgsConstructor;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.Board.UserService;

import java.util.Map;

@Controller
@AllArgsConstructor
public class UserControllerkim {

    private UserService userService;
    @PostMapping("/member/join")
    public String createUser(UserVO user) {
        userService.createUser(user);
        return "redirect:/";
    }

    @PostMapping("/member/login")
    public String loginTest(@RequestParam Map<String,String> paramMap,RedirectAttributes rttr) {
        String id = paramMap.get("id");
        String pw = paramMap.get("pw");

        return userService.get(id,pw,rttr);
    }

    @GetMapping("/member/login")
    public String login() {return "/member/login";}

    @GetMapping("/member/join")
    public String join() {return "member/join";}

    @RequestMapping("/member/loginActon")
    public String loginAction() {return "member/loginAction";}

    @RequestMapping("/member/logout")
    public String logout(){
        return userService.logout();
    }

    @GetMapping("/member/memberInfo")
    public String info() { return "/member/memberInfo"; }

    @GetMapping("/member/list")
    public String list() {return "/member/list";}
}
