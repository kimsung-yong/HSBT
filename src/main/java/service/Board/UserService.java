package service.Board;

import domain.user.UserVO;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

public interface UserService {

    public void createUser(UserVO user);

    public String get(String id, String pw,RedirectAttributes rttr);

    public String logout();

    public List<UserVO> getList();
}
