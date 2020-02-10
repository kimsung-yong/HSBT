package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IntroController {

        @RequestMapping("/intro/introduce")
        public String introduce(){ return "/intro/company/introduce"; }

        @RequestMapping("/intro/history")
        public String history(){
            return "/intro/company/history";
        }

        @RequestMapping("/intro/map")
        public String map(){      return "/intro/company/map";   }

}
