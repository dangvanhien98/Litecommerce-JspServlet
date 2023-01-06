package Bean;

import java.util.Date;

public class ProductBean {
	private String productID;
	private String productName;
	private int quantity;
	private float price;
	private float oldPrice;
	private float discount;
	private String size;
	private String color;
	private String image;
	private Date entryDate;
	private String note;
	private String groupProductID;
	public ProductBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductBean(String productID, String productName, int quantity, float price, float oldPrice, float discount,
			String size, String color, String image, Date entryDate, String note, String groupProductID) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.quantity = quantity;
		this.price = price;
		this.oldPrice = oldPrice;
		this.discount = discount;
		this.size = size;
		this.color = color;
		this.image = image;
		this.entryDate = entryDate;
		this.note = note;
		this.groupProductID = groupProductID;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getOldPrice() {
		return oldPrice;
	}
	public void setOldPrice(float oldPrice) {
		this.oldPrice = oldPrice;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Date getEntryDate() {
		return entryDate;
	}
	public void setEntryDate(Date entryDate) {
		this.entryDate = entryDate;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getGroupProductID() {
		return groupProductID;
	}
	public void setGroupProductID(String groupProductID) {
		this.groupProductID = groupProductID;
	}
	
}
