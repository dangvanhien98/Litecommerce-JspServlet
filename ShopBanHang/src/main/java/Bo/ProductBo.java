package Bo;

import java.util.ArrayList;

import Bean.ProductBean;
import Dao.ProductDao;

public class ProductBo {
	ProductDao productDao = new ProductDao();
	public ArrayList<ProductBean> getAllProducts(){		
		return productDao.getAllProducts();
	}
	
	public ArrayList<ProductBean> getArrivalProducts(){
		return productDao.getArrivalProducts();
	}		
	
	public ArrayList<ProductBean> getProductsByGroupID(String groupID){
		return productDao.getProductsByGroupID(groupID);
	}
	
	public ArrayList<ProductBean> getArrivalsByGroupID(String groupID){
		return productDao.getArrivalsByGroupID(groupID);
	}
}
