package userMapperTest;

import domain.user.UserVO;
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
    //정보 입력 테스트
    @Test
    public void testInsert(){
        UserVO user = new UserVO();
        user.setId("sxvc779");
        user.setPw("1234");
        user.setManager("1");
        user.setName("송승원");
        user.setAddress("대전 광역시");
        user.setPhone("010-0000-0000");
        mapper.insert(user);
        log.info(user);
    }
    //아이디로 정보 조회 테스트
    @Test
    public void testRead(){
        UserVO user=mapper.read("sxvc779");
        log.info(user);
    }
    //아이디로 삭제 테스트
    @Test
    public void testDelete(){
        log.info("DELETE COUNT: " + mapper.delete("sxvc779"));
    }
    //업데이트 테스트
    @Test
    public void testUpdate(){
        UserVO user=new UserVO();
        user.setId("sxvc779");
        user.setPw("4567");
        user.setPhone("112");
        user.setName("이승준");
        user.setAddress("강원도");


        int count = mapper.update(user);
        log.info("UPDATE COUNT: "+ count);
    }
}
