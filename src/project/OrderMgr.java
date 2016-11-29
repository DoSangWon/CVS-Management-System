package project;

import java.sql.*;
import java.util.Vector;


public class OrderMgr {
	public DBConnectionMgr pool;
	
	public OrderMgr(){
		try {
				pool = DBConnectionMgr.getInstance();
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	
	public String getProduct(int pnum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		String pname = null;

		try {

			con = pool.getConnection();	
			sql = "select Product_Name from Product where Product_Num=?";
			pstmt = con.prepareStatement(sql);
			//System.out.println(bean.getBid());
			pstmt.setInt(1,pnum);
			rs = pstmt.executeQuery();
			while(rs.next()){
				pname = rs.getString(1);
			}
			
			int count = pstmt.executeUpdate();
			if (count > 0)
				flag = true;
				
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return pname;
	}
	
	
	public int getOnum() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		int onum = 0;

		try {

			con = pool.getConnection();	
			sql = "select Order_num from Order_Spec";
			pstmt = con.prepareStatement(sql);
			//System.out.println(bean.getBid());
			
			rs = pstmt.executeQuery();
			while(rs.next()){
				onum = rs.getInt(1);
			}
			
			int count = pstmt.executeUpdate();
			if (count > 0)
				flag = true;
				
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return onum;
	}
	
	public int getOpnum(String opname) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		int onum = 0;

		try {

			con = pool.getConnection();	
			sql = "select Product_num from Product where Product_Name=?";
			pstmt = con.prepareStatement(sql);
			//System.out.println(bean.getBid());
			pstmt.setString(1,opname);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				onum = rs.getInt(1);
			}
			
			
				
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return onum;
	}
	
	
	public boolean insertOrder(int onum,int pnum, String pname, String opamount) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;

		try {

			con = pool.getConnection();
			
			sql = "insert Order_Spec(Order_num,Product_num,Product_name,Product_amount,Order_date) values(?,?,?,?,curdate())";
			pstmt = con.prepareStatement(sql);
			//System.out.println(bean.getBid());
			pstmt.setInt(1,onum);
			pstmt.setInt(2,pnum);
			pstmt.setString(3,pname);
			pstmt.setString(4,opamount);

			
			if(pstmt.executeUpdate()==1){
				flag=true;
			}
			
				
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
}
