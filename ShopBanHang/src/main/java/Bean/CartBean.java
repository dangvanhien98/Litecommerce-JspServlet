package Bean;

public class CartBean {
	private String productID;
	private String productName;
	private Float price;
	private int quantity;
//	private Float total;
	public CartBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartBean(String productID, String productName, Float price, int quantity) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.price = price;
		this.quantity = quantity;
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
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Float getTotal() {
		return price*quantity;
	}
//	public void setTotal(Float total) {
//		this.total = total;
//	}
	
	
}
