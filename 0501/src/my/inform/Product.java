package my.inform;
import java.util.Date;
public class Product {
	private String pName;
	private String maker;
	private int price;
	private Date pDate;
	
	
	public Product(){}
	public Product(String pName, String maker, int price) {
		super();
		this.pName = pName;
		this.maker = maker;
		this.price = price;
	}
	
	
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getpDate() {
		return pDate;
	}
	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}
	
	
	public String decideQuality(){
		String result;
		if(price >= 100000)
			result = "고급";
		else if(price <100000 && price >= 50000)
			result = "중급";
		else
			result = "하급";
		return result;
	}
}
