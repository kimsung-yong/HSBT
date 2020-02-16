package mapper;

import domain.review.ReviewVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/resources/spring/applicationContext.xml")
@Log4j
public class ReviewMapperTests {
    @Setter(onMethod_ = @Autowired)
    private ReviewMapper mapper;

    @Test
    public void testGetList() {
        mapper.getList().forEach(ReviewVO -> log.info(ReviewVO));
    }

//    @Test
//    public void testInsert() {
//        ReviewVO reviewVO = new ReviewVO();
//        reviewVO.setR_title("New Test");
//        reviewVO.setR_content("New Test");
//        reviewVO.setU_no(1L);
//
//        mapper.insert(reviewVO);
//        log.info(reviewVO);
//    }
//
//    @Test
//    public void testInsertSelectKey() {
//        ReviewVO reviewVO = new ReviewVO();
//        reviewVO.setR_title("New Select Key Test");
//        reviewVO.setR_content("New Select Key Test");
//        reviewVO.setU_no(1L);
//
//        mapper.insertSelectKey(reviewVO);
//        log.info(reviewVO);
//    }

    @Test
    public void testRead() {
        ReviewVO reviewVO = mapper.read(2L);
        log.info(reviewVO);
    }
}