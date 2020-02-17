package service.user;

import domain.user.UserVO;

import java.util.List;

public interface UserService {
    public void register(UserVO user);

    public UserVO get(String id);

    public boolean modify(UserVO user);

    public boolean remove(String user);

    public List<UserVO> getList();
}
