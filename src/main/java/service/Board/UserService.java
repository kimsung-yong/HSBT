package service.Board;

import domain.user.UserVO;

import java.util.List;

public interface UserService {

    public void createUser(UserVO user);

    public String get(String id, String pw);

    public String logout();

    public List<UserVO> getList();
}
