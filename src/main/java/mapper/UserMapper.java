package mapper;

import domain.user.UserVO;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper {
    @Select("select *from tbl_user")
    public List<UserVO> getList();

    public void insert(UserVO user);
/*
    public void insertSelectKey(UserVO user);*/

    public UserVO read(UserVO user);

    public int delete(String id);

    public int update(UserVO user);
}
