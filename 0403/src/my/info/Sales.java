package my.info;

import java.util.Date;

public class Sales {
	private String fruit;
	private String sports;
	private int numSales;
	private Date salesDate;
	
	public String getFruit() {
		return fruit;
	}
	public void setFruit(String fruit) {
		this.fruit = fruit;
	}
	public String getSports() {
		return sports;
	}
	public void setSports(String sports) {
		this.sports = sports;
	}
	public int getNumSales() {
		return numSales;
	}
	public void setNumSales(int numSales) {
		this.numSales = numSales;
	}
	public Date getSalesDate() {
		return salesDate;
	}
	public void setSalesDate(Date salesDate) {
		this.salesDate = salesDate;
	}
}
