package domain.user;

import lombok.Data;

@Data
public class UserVO {
    private String id;
    private String pw;
    private String phone;
    private String name;
    private String address;
    private int manager;
}
