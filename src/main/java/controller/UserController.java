package controller;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.user.UserService;

@Log4j
@Controller
@RequestMapping("/member/*")
@AllArgsConstructor
public class UserController {


}
