package mapper;

import domain.user.UserVO;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper {
    @Select("select *from tbl_user")
    public List<UserVO> getList();

    public void insertSelectKey(UserVO user);
}
