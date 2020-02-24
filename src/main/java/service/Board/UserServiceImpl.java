package service.Board;

import domain.user.UserVO;
import lombok.Setter;
import mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.jms.Session;
import javax.servlet.http.HttpSession;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private HttpSession session;
    @Setter(onMethod_ = @Autowired)
    private UserMapper mapper;

    Model model;

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
}
