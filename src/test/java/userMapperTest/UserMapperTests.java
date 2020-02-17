package userMapperTest;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mapper.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.xml.registry.infomodel.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/resources/spring/applicationContext.xml")
@Log4j
public class UserMapperTests {
    @Setter(onMethod_= @Autowired)
    private UserMapper mapper;

    @Test
    public void testGetList(){
        mapper.getList().forEach(User -> log.info(User));
    }
}
