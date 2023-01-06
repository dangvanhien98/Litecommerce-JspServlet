package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Bean.ProductBean;
import Connect_DB.Connection_DB;

public class ProductDao {
	ArrayList<ProductBean> listProduct = new ArrayList<ProductBean>();
	Connection_DB dc = new Connection_DB();
	public ArrayList<ProductBean> getAllProducts(){		
		try {
			dc.connect();
			String sql = "select * from PRODUCT order by EntryDate desc";
			PreparedStatement cmd = dc.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				ProductBean tmp = new ProductBean();
				tmp.setProductID(rs.getString("ProductID"));
				tmp.setProductName(rs.getString("ProductName"));
				tmp.setQuantity(rs.getInt("Quantity"));
				tmp.setPrice(rs.getFloat("Price"));
				tmp.setOldPrice(rs.getFloat("OldPrice"));
				tmp.setDiscount(rs.getFloat("Discount"));
				tmp.setSize(rs.getString("Size"));
				tmp.setColor(rs.getString("Color"));
				tmp.setImage(rs.getString("Image"));
				tmp.setEntryDate(rs.getDate("EntryDate"));
				tmp.setNote(rs.getString("Note"));
				tmp.setGroupProductID(rs.getString("GroupProductID"));
				listProduct.add(tmp);
			}
			dc.cn.close();
			cmd.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listProduct;
	}
	
	public ArrayList<ProductBean> getArrivalProducts(){		
		try {
			dc.connect();
			String sql = "select top(5) * from PRODUCT order by EntryDate desc";
			PreparedStatement cmd = dc.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				ProductBean tmp = new ProductBean();
				tmp.setProductID(rs.getString("ProductID"));
				tmp.setProductName(rs.getString("ProductName"));
				tmp.setQuantity(rs.getInt("Quantity"));
				tmp.setPrice(rs.getFloat("Price"));
				tmp.setOldPrice(rs.getFloat("OldPrice"));
				tmp.setDiscount(rs.getFloat("Discount"));
				tmp.setSize(rs.getString("Size"));
				tmp.setColor(rs.getString("Color"));
				tmp.setImage(rs.getString("Image"));
				tmp.setEntryDate(rs.getDate("EntryDate"));
				tmp.setNote(rs.getString("Note"));
				tmp.setGroupProductID(rs.getString("GroupProductID"));
				listProduct.add(tmp);
			}
			dc.cn.close();
			cmd.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listProduct;
	}
	
	public ArrayList<ProductBean> getProductsByGroupID(String groupID){
		try {
			dc.connect();
			String sql = "select * from PRODUCT where GroupProductID ="+groupID + "order by EntryDate desc";
			PreparedStatement cmd = dc.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				ProductBean tmp = new ProductBean();
				tmp.setProductID(rs.getString("ProductID"));
				tmp.setProductName(rs.getString("ProductName"));
				tmp.setQuantity(rs.getInt("Quantity"));
				tmp.setPrice(rs.getFloat("Price"));
				tmp.setOldPrice(rs.getFloat("OldPrice"));
				tmp.setDiscount(rs.getFloat("Discount"));
				tmp.setSize(rs.getString("Size"));
				tmp.setColor(rs.getString("Color"));
				tmp.setImage(rs.getString("Image"));
				tmp.setEntryDate(rs.getDate("EntryDate"));
				tmp.setNote(rs.getString("Note"));
				tmp.setGroupProductID(rs.getString("GroupProductID"));
				listProduct.add(tmp);
			}
			dc.cn.close();
			cmd.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listProduct;
	}
	
	public ArrayList<ProductBean> getArrivalsByGroupID(String groupID){
		try {
			dc.connect();
			String sql = "select top(5) * from PRODUCT where GroupProductID ="+groupID + "order by EntryDate desc";
			PreparedStatement cmd = dc.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				ProductBean tmp = new ProductBean();
				tmp.setProductID(rs.getString("ProductID"));
				tmp.setProductName(rs.getString("ProductName"));
				tmp.setQuantity(rs.getInt("Quantity"));
				tmp.setPrice(rs.getFloat("Price"));
				tmp.setOldPrice(rs.getFloat("OldPrice"));
				tmp.setDiscount(rs.getFloat("Discount"));
				tmp.setSize(rs.getString("Size"));
				tmp.setColor(rs.getString("Color"));
				tmp.setImage(rs.getString("Image"));
				tmp.setEntryDate(rs.getDate("EntryDate"));
				tmp.setNote(rs.getString("Note"));
				tmp.setGroupProductID(rs.getString("GroupProductID"));
				listProduct.add(tmp);
			}
			dc.cn.close();
			cmd.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listProduct;
	}
}
