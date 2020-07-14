package my.login;

import java.util.Date;

public class Login {
	private String userId;
	private String password;
	private String userName;
	private int weight;
	private String message;
	private Date loginTime;
	public Login() { 
	} // 기본 생성자 . 파라미터없이 객체 생성
	// 모든 매소드는 () 필요. 그 다음에 {} 필요.
	public Login(String userId, String password, String userName, int weight) {
		super();
		this.userId = userId;
		this.password = password;
		this.userName = userName;
		this.weight = weight;
		// 파라미터 생성자 -> 파라미터 값을 가지고 객체 생성할 때 사용
		if (weight >=100){
			message = "체중과다입니다.";
		} else if(weight >= 60&& weight<=80){
			message = "정상체중입니다.";
		} else {
			message = "정상미달입니다";
		}
			
	}
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}
	
}
