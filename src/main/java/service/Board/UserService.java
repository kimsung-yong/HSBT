package service.Board;

import domain.user.UserVO;

public interface UserService {

    public void createUser(UserVO user);

    public String get(String id, String pw);
}
