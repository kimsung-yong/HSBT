package service.Board;

import domain.Criteria;
import domain.user.UserVO;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.jms.Session;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service
@Log4j
//@AllArgsConstructor
public class UserServiceImpl implements UserService {
    @Setter(onMethod_ = @Autowired)
    private HttpSession session;
    @Setter(onMethod_ = @Autowired)
    private UserMapper mapper;

    Model model;

//    @Autowired
//    public UserServiceImpl(HttpSession session) {
//        this.session = session;
//    }
//    public UserServiceImpl() {
//
//    }

    @Override
    public void createUser(UserVO user) {
        mapper.insert(user);
    }

    @Override
    public String get(String id, String pw,RedirectAttributes rttr) {
        System.out.println(id);
        UserVO vo = new UserVO();
        vo.setId(id);
        vo.setPw(pw);
        UserVO vs = mapper.read(vo);
        if(vs == null){

//            model.addAttribute("check",check);
                rttr.addFlashAttribute("check", true);
                return "redirect:/member/login";
        }else {
        session.setAttribute("vo",vs);
        return "index";
        }

    }

    @Override
    public String logout() {
        session.invalidate();
        return "index";
    }

    @Override
    public List<UserVO> getList(Criteria cri) {
        log.info("getList............");
        return mapper.getListWithPaging(cri);
    }

    @Override
    public int update(UserVO user) {
        return mapper.update(user);
    }

    @Override
    public int delete(String id) {
        return mapper.delete(id);
    }

    @Override
    public int total(Criteria cri) {
        return mapper.getCount(cri);
    }

    @Override
    public UserVO getListSelect(String id) {

        return mapper.get(id);
    }

    @Override
    public int update2(UserVO user) {
        int updateUser = mapper.update(user);
        session.invalidate();
        UserVO vo = mapper.read(user);
        session.setAttribute("vo", vo);
        return updateUser;
    }
}
