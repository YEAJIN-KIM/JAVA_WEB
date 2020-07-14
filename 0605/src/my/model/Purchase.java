package my.model;

import java.util.Date;

public class Purchase {
	private int purchaseId;
	private String buyerId;
	private int movieId;
	private int amount;
	private Date purchaseDate;
	private int payment;
	
	public Purchase(){} // 기본 생성자
	
	public Purchase(String buyerId, int movieId, int amount, Date purchaseDate, int payment) {
		super();
		this.buyerId = buyerId;
		this.movieId = movieId;
		this.amount = amount;
		this.purchaseDate = purchaseDate;
		this.payment = payment;
	}
	 // purchase.jsp 만들더니 이거 만듦.
	
	public int getPurchaseId() {
		return purchaseId;
	}
	public void setPurchaseId(int purchaseId) {
		this.purchaseId = purchaseId;
	}
	public String getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
	}
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	
	
}
