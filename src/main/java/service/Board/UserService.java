package service.Board;

import domain.Criteria;
import domain.user.UserVO;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

public interface UserService {

    public void createUser(UserVO user);

    public String get(String id, String pw,RedirectAttributes rttr);

    public String logout();

    public List<UserVO> getList(Criteria cri);

    public int update(UserVO user);

    public int delete(String id);

    public int total(Criteria cri);

    public UserVO getListSelect(String id);

    public int update2(UserVO user);
}
