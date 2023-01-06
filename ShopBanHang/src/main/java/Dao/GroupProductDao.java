package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Bean.GroupProductBean;
import Connect_DB.Connection_DB;

public class GroupProductDao {
	ArrayList<GroupProductBean> lstGP = new ArrayList<GroupProductBean>();
	Connection_DB dc = new Connection_DB();
	public ArrayList<GroupProductBean> getAllGP(){
		try {
			dc.connect();
			String sql = "select * from GROUPPRODUCT";
			PreparedStatement cmd = dc.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				GroupProductBean gr = new GroupProductBean();
				gr.setGroupProductID(rs.getString("GroupProductID"));
				gr.setGroupProductName(rs.getString("GroupProductName"));
				gr.setImage(rs.getString("Image"));
				lstGP.add(gr);
			}
			dc.cn.close();
			cmd.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lstGP;
	}
}
