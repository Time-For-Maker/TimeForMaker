package member.model.vo;

import java.sql.Date;
import java.util.Arrays;

public class Member {
	
	private String 	userId; 		//USER_ID
	private String 	userName; 		//USER_NAME
	private String 	userPwd; 		//USER_PWD
	private String 	userNick; 		//USER_NICK
	private byte 	userImg; 		//USER_IMG
	private String 	userPhone; 		//USER_PHONE
	private Date   	userEnroll; 	//USER_ENROLL
	private Date   	userModify; 	//USER_MODIFY
	private String  userType; 		//USER_TYPE
	private String	managerType;	//MANAGER_TYPE
	
	
	public Member() {
		super();
	}

	
	/**
	 * 이것은 전체 생성자 입니다 - ain 2023/07/11 -
	 * @param userId
	 * @param userName
	 * @param userPwd
	 * @param userNick
	 * @param userImg
	 * @param userPhone
	 * @param userEnroll
	 * @param userModify
	 * @param userType
	 * @param managerType
	 */
	public Member(String userId, String userName, String userPwd, String userNick, byte userImg, String userPhone,
			Date userEnroll, Date userModify, String userType, String managerType) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userNick = userNick;
		this.userImg = userImg;
		this.userPhone = userPhone;
		this.userEnroll = userEnroll;
		this.userModify = userModify;
		this.userType = userType;
		this.managerType = managerType;
	}
	
	


	/**
	 *  회원 가입용 생성자입니다. - ain 2023/07/11 -
	 * @param userId
	 * @param userName
	 * @param userPwd
	 * @param userNick
	 * @param userPhone
	 */
	public Member(String userId, String userName, String userPwd, String userNick, String userPhone) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userNick = userNick;
		this.userPhone = userPhone;
	}


	/**
	 *  마이페이지 내 정보 수정용 생성자 입니다 - ain 2023/07/11 -
	 * @param userId
	 * @param userName
	 * @param userPwd
	 * @param userNick
	 * @param userImg
	 * @param userPhone
	 */
	public Member(String userId, String userName, String userPwd, String userNick, byte userImg, String userPhone) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userNick = userNick;
		this.userImg = userImg;
		this.userPhone = userPhone;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserPwd() {
		return userPwd;
	}


	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}


	public String getUserNick() {
		return userNick;
	}


	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}


	public byte getUserImg() {
		return userImg;
	}


	public void setUserImg(byte userImg) {
		this.userImg = userImg;
	}


	public String getUserPhone() {
		return userPhone;
	}


	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}


	public Date getUserEnroll() {
		return userEnroll;
	}


	public void setUserEnroll(Date userEnroll) {
		this.userEnroll = userEnroll;
	}


	public Date getUserModify() {
		return userModify;
	}


	public void setUserModify(Date userModify) {
		this.userModify = userModify;
	}


	public String getUserType() {
		return userType;
	}


	public void setUserType(String userType) {
		this.userType = userType;
	}


	public String getManagerType() {
		return managerType;
	}


	public void setManagerType(String managerType) {
		this.managerType = managerType;
	}


	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userName=" + userName + ", userPwd=" + userPwd + ", userNick=" + userNick
				+ ", userImg=" + userImg + ", userPhone=" + userPhone + ", userEnroll=" + userEnroll
				+ ", userModify=" + userModify + ", userType=" + userType + ", managerType=" + managerType + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
