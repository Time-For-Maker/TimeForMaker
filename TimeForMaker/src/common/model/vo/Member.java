package common.model.vo;

public class Member {
	private String userId;
	private String managerType;
	
	public Member() {
		
	}

	public Member(String userId, String managerType) {
		super();
		this.userId = userId;
		this.managerType = managerType;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getManagerType() {
		return managerType;
	}

	public void setManagerType(String managerType) {
		this.managerType = managerType;
	}
	
	
}
