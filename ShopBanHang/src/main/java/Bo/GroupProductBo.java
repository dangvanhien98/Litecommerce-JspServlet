package Bo;

import java.util.ArrayList;

import Bean.GroupProductBean;
import Dao.GroupProductDao;

public class GroupProductBo {
	GroupProductDao grd = new GroupProductDao();
	public ArrayList<GroupProductBean> getAllGP(){
		return grd.getAllGP();
	}
}
