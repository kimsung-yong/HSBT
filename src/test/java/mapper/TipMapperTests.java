package mapper;

import domain.TipVO;
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
public class TipMapperTests {
    @Setter(onMethod_ = @Autowired)
    private TipMapper mapper;

    @Test
    public void testGetList() {
        mapper.getList().forEach(tipVO -> log.info(tipVO));
    }

    @Test
    public void testInsert() {
        TipVO tipVO = new TipVO();
        tipVO.setTTitle("New Test");
        tipVO.setTContent("New Test");
        tipVO.setUNo(1L);

        mapper.insert(tipVO);
        log.info(tipVO);
    }

    @Test
    public void testInsertSelectKey() {
        TipVO tipVO = new TipVO();
        tipVO.setTTitle("New Select Key Test");
        tipVO.setTContent("New Select Key Test");
        tipVO.setUNo(1L);

        mapper.insertSelectKey(tipVO);
        log.info(tipVO);
    }

    @Test
    public void testRead() {
        TipVO tipVO = mapper.read(4L);
        log.info(tipVO);
    }
}
