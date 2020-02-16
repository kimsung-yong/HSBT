package boardMapperTest;

import domain.board.BoardVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import service.Board.BoardService;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/resources/spring/applicationContext.xml")
public class BoardServiceTest {
    @Setter(onMethod_ = @Autowired)
    BoardService service;
//    @Test
//    public void testGetList(){
//        service.read().forEach(boardVO -> log.info(boardVO));
//    }
    @Test
    public void testGet(){
        service.get(8L);
    }
//    @Test
//    public void testRegster(){
//        BoardVO vo = new BoardVO();
//        vo.setB_title("키키키");
//        vo.setB_content("키키키키키");
//        vo.setU_no(1L);
//
//        service.regster(vo);
//    }
    @Test
    public void testModify(){
        BoardVO vo = new BoardVO();
        vo.setB_title("ddsd");
        vo.setB_content("ddps");
        vo.setB_no(6L);
        service.modify(vo);
    }
    @Test
    public void testRemove(){
        service.remove(6L);
    }

}
