package my.info;

import java.util.Date;

public class Product {
	private String pName;
	private String pMaker;
	private int price;
	private String pQuality;
	private Date pDate;	
	
	// 오른클릭 - 소스 - 컨스트럭터 유징 필드
	public Product(){} // 기본 생성자
	public Product(String pName, String pMaker, int price, Date pDate) {
		super();
		this.pName = pName;	// 파라미터에 pName 이런걸 넣어서 product 타입의 객체를 만들겠다.
		this.pMaker = pMaker;
		this.price = price;
		this.pDate = pDate;
		// 파라미터 생성자 ---> 파라미터 생성자를 쓰면 기본 생성자가 없어짐. 그래서 선언을 해줘야함 public Product() {}
		if(price >=10000)
				pQuality = "high";
			else if(price <10000 && price >=5000)
				pQuality = "medium";
			else if(price <5000)
				pQuality = "low";
		// 파라미터 생성자 필요할 때 = EX)만원 넘어가면 고, 중간 = 중, 이하면 하급. 이런거 생성하면서 퀄리티 결정해주고 싶을 때.
		// 기본 생성자에서는 못함. (if 문 이하) pQuality에 값을 주면서.. 왠지 나올듯?
	}
	
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpMaker() {
		return pMaker;
	}
	public void setpMaker(String pMaker) {
		this.pMaker = pMaker;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getpQuality() {
		return pQuality;
	}
	public void setpQuality(String pQuality) {
		this.pQuality = pQuality;
	}
	public Date getpDate() {
		return pDate;
	}
	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}

}