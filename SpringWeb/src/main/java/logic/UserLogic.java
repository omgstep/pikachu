package logic;

import java.util.List;

import pbean.UserInfo;
import vbean.VUserInfo;

public interface UserLogic {
	//로그인
   public UserInfo login(VUserInfo vuserInfo);
    //이름으로 사용자 검색
   public List<UserInfo>
   	searchByName(String name);
    //사용자추가
   public void addUser(VUserInfo userInfo);
    //아이디 중복 체크
   public List<UserInfo>
   	searchByIdAjax(String userid);
}