package service.user;

import domain.user.UserVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mapper.UserMapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Log4j
@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService{
    private UserMapper mapper;




    @Override
    public UserVO get(String id) {
        return null;
    }

    @Override
    public boolean modify(UserVO user) {
        return false;
    }

    @Override
    public boolean remove(String user) {
        return false;
    }

    @Override
    public List<UserVO> getList() {
      log.info("getList........");
      return mapper.getList();
    }
    @Override
    public void register(UserVO user){
        log.info("register......" + user);
        mapper.insertSelectKey(user);
    }
}
