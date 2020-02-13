package controller;

import domain.BoardVO;
import domain.Criteria;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.Board.BoardService;
import service.Board.BoardServiceImp;

import java.awt.*;

@Controller
@RequestMapping("/board/freeboard/*")
@Log4j
public class  BoardController {
    @Autowired
    private BoardService service;

    @GetMapping("/list")
    public void list(Model model, Criteria cri) {

        model.addAttribute("list",service.read());
    }
    @GetMapping("/register")
    public void register(){

    }
    @PostMapping("/register")
    public String register(BoardVO vo, RedirectAttributes rttr){
        service.regster(vo);
        rttr.addFlashAttribute("result",vo.getB_no());
        return "redirect:/board/freeboard/list";
    }
    @GetMapping("/get")
    public void get(@RequestParam("b_no") Long b_no,Model model){

       model.addAttribute("board",service.get(b_no));
    }
    @GetMapping("/modify")
    public void modify(@RequestParam("b_no") Long b_no,Model model){
        model.addAttribute("board",service.get(b_no));
    }
    @PostMapping("/modify")
    public String modify(BoardVO vo,Model model,RedirectAttributes rttr){

        if(service.modify(vo)){
            rttr.addFlashAttribute("board","sucess");
        }
        return "redirect:/board/freeboard/list";
    }
    @PostMapping("/remove")
    public String remove(Long b_no){
        service.remove(b_no);
        return "redirect:/board/freeboard/list";
    }


}
