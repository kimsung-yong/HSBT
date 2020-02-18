package controller;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import service.user.UserService;

@Log4j
@Controller
@RequestMapping("/member/*")
@AllArgsConstructor
public class UserController {
 private  UserService service;

 @GetMapping("/login")
    public void login(Model model){
     log.info("login");
    model.addAttribute("login", service.getList());
 }

}
