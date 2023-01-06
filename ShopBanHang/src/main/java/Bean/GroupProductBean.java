package Bean;

public class GroupProductBean {
	private String groupProductID;
	private String groupProductName;
	private String image;
	public GroupProductBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GroupProductBean(String groupProductID, String groupProductName, String image) {
		super();
		this.groupProductID = groupProductID;
		this.groupProductName = groupProductName;
		this.image = image;
	}
	public String getGroupProductID() {
		return groupProductID;
	}
	public void setGroupProductID(String groupProductID) {
		this.groupProductID = groupProductID;
	}
	public String getGroupProductName() {
		return groupProductName;
	}
	public void setGroupProductName(String groupProductName) {
		this.groupProductName = groupProductName;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}
