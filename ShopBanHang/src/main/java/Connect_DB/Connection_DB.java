package Connect_DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connection_DB {
	public Connection cn;

	public void connect() throws Exception {

		// B1: xác định HQTCSDL
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	//	System.out.print("Da xac dinh duoc hqtcsdl ");
		// B2 : ket noi csdl

		String url = "jdbc:sqlserver://DESKTOP-8PJ0BGU\\SQLEXPRESS:1433;databaseName=QuanLyBanHang;user=sa;password=123;";
		cn = DriverManager.getConnection(url);
	//	System.out.print("Da ket noi thanh cong\n");
	}
}
