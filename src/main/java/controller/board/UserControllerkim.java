package controller.board;

import domain.Criteria;
import domain.PageDTO;
import domain.user.UserVO;
import lombok.AllArgsConstructor;
import org.apache.ibatis.annotations.Param;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.support.RequestPartServletServerHttpRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.Board.UserService;
import service.estimate.EstimateService;

import java.net.URI;
import java.util.List;
import java.util.Map;

@Controller
@AllArgsConstructor
public class UserControllerkim {

    private UserService userService;

    private EstimateService estimateService;


    @PostMapping("/member/join")
    public String createUser(UserVO user){
        userService.createUser(user);
        return "redirect:/";
    }
    @PostMapping("/member/login")
    public String loginTest(@RequestParam Map<String,String> paramMap,RedirectAttributes rttr) {
        String id = paramMap.get("id");
        String pw = paramMap.get("pw");


        return userService.get(id,pw,rttr);

//        return userService.get(id,pw,rttr);
    }
    @GetMapping({"/member/get","/member/modify"})
    public void get(@RequestParam("id") String id, @ModelAttribute("cri") Criteria cri, Model model){

        model.addAttribute("list", userService.getListSelect(id));
    }
    @PostMapping("/member/remove")
    public String remove(@RequestParam("id") String id){
        userService.delete(id);
        return "redirect:/member/list";
    }
    @PostMapping("/member/modify")
    public String modify(UserVO user,@RequestParam("id") String id,Model model){
        userService.update(user);
        return "redirect:/member/list";
    }
    @GetMapping("/member/login")
    public String login(){return "/member/login";}
    @GetMapping("/member/join")
    public String join(){return "member/join";}
    @RequestMapping("/member/loginActon")
    public String loginAction(){return "member/loginAction";}
    @RequestMapping("/member/logout")
    public String logout(){
        userService.logout();
        return "redirect:/";
    }
    @GetMapping("/member/memberInfo")
    public String info() { return "/member/memberInfo"; }
    @GetMapping("/member/list")
    public String list(Model model, Criteria cri){
        model.addAttribute("list",userService.getList(cri));
        model.addAttribute("pageMaker",new PageDTO(cri,userService.total(cri)));


        return "/member/list";
    }

    @GetMapping("/member/delList")
    public String multiDel(@RequestParam(value = "check[]") List<String> checkParam){
        for(int i = 0; i<checkParam.size();i++){
            userService.delete(checkParam.get(i));
        }

        return "redirect:/member/list";
    }
    @GetMapping({"/member/estimate/list"})
    public void estimateList(Model model,Criteria cri){
        model.addAttribute("list",estimateService.getListWithPaging(cri));
        model.addAttribute("pageMaker",new PageDTO(cri,estimateService.total()));


    }
    @GetMapping("/member/delEstimate")
    public String estimateDel(@RequestParam(value = "check[]") List<Long> checkParam ){
        for(int i = 0; i<checkParam.size();i++){
            estimateService.delete(checkParam.get(i));
        }
        return "redirect:/member/estimate/list";
    }
    @GetMapping("/member/estimate/get")
    public void estimateGet(@RequestParam("e_no") Long e_no,@ModelAttribute("cri") Criteria cri,Model model){
        model.addAttribute("estimate",estimateService.get(e_no));
    }

}
