package project;

import java.sql.*;
import java.util.Vector;

public class ProductMgr {
	
	
public DBConnectionMgr pool;
	
	public ProductMgr(){
		try {
				pool = DBConnectionMgr.getInstance();
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	
	public Vector<ProductBean> getProduct() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<ProductBean> vlist = new Vector<ProductBean>();
		try {
			
			con = pool.getConnection();
			sql= "select * from Product;";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				ProductBean bean = new ProductBean();
				bean.setPnum(rs.getString(1));
				bean.setPname(rs.getString(2));
				bean.setPcost(rs.getString(3));
				vlist.add(bean);
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
}
