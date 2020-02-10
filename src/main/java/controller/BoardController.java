package controller;

import domain.BoardVO;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.Board.BoardService;
import service.Board.BoardServiceImp;

import java.awt.*;

@Controller
@RequestMapping("/board/freeboard/*")
@Log4j
public class BoardController {
    @GetMapping("/list")
    public void list(Model model) {
        BoardVO vo;
        BoardService service = new BoardServiceImp();

    }
}
