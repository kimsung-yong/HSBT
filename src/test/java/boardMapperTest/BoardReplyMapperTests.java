package boardMapperTest;

import domain.Criteria;
import domain.board.BoardReplyVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mapper.BoardReplyMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/resources/spring/applicationContext.xml")
public class BoardReplyMapperTests {
    @Setter(onMethod_ = @Autowired)
    private BoardReplyMapper mapper;
    @Test
    public void testMapper(){
        log.info(mapper);
    }
    @Test
    public void testInsert(){
        BoardReplyVO vo = new BoardReplyVO();

        vo.setId("as");
        vo.setBr_content("첫 리플");
        vo.setB_no(2641L);

        log.info(mapper.insert(vo));
    }
    @Test
    public void testRead(){
        Long targetBRno = 2L;

        BoardReplyVO vo = mapper.read(targetBRno);
        log.info(vo);
    }
    @Test
    public void testDelete(){
        Long target = 2L;
        log.info(mapper.delete(target));
    }
    @Test
    public void testUpdate(){
        Long target = 2L;

        BoardReplyVO vo = mapper.read(target);

        vo.setBr_content("수정 리플");

        int count = mapper.update(vo);

        log.info(count);
    }
    @Test
    public void testList(){
        Criteria cri = new Criteria();
        //2641
        List<BoardReplyVO> list = mapper.getListWithPaging(cri,2641L);
        list.forEach(reply ->log.info(reply));
    }
    @Test
    public void testList2() {
        Criteria cri = new Criteria(2, 10);
        //206L
        List<BoardReplyVO> contents = mapper.getListWithPaging(cri, 206L);
        contents.forEach(content -> log.info(content));
    }

    public void testgetCount(){

    }

}
