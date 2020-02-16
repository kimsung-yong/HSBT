package boardMapperTest;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mapper.BoardMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/resources/spring/applicationContext.xml")

public class BoardMapperTests {
    @Setter(onMethod_ = @Autowired)
    public BoardMapper mapper;
    @Test
    public void testGetList(){
        mapper.getList().forEach(boardVO -> log.info(boardVO));
    }
    @Test
    public void testGetListSelect(){
        mapper.getListSelect(6L);
    }
//    @Test
//    public void testInsert(){
//        BoardVO vo = new BoardVO();
//        vo.setB_title("asd111");
//        vo.setB_content("asdas22");
//        vo.setU_no(1L);
//
//        mapper.insert(vo);
//        log.info(vo);
//    }
//    @Test
//    public void testUpdate(){
//        BoardVO vo = new BoardVO();
//        vo.setB_title("asdada");
//        vo.setB_no(3L);
//        vo.setB_content("azdfq2q");
//        vo.setU_no(1L);
//
//        mapper.update(vo);
//        log.info(vo);
//    }
    @Test
    public void testDelete(){

        mapper.delete(7L);

    }



}
