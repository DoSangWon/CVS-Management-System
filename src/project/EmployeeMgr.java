package project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class EmployeeMgr {
public DBConnectionMgr pool;
	
	public EmployeeMgr(){
		try {
				pool = DBConnectionMgr.getInstance();
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	public Vector<EmployeeBean> getEmployee(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<EmployeeBean> vlist = new Vector<EmployeeBean>();
		try {
			
			con = pool.getConnection();
			sql= "select a.Employee_Id,a.Employee_Name,a.Employee_tel, a.Employee_date,a.Employee_hourly_wage,b.branch_Name from Employee a inner JOIN branchinfo b ON a.branch_Id = b.branch_Id where (select Branch_Owner_Id from branch_user) = ?;";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				EmployeeBean bean = new EmployeeBean();
				bean.setEid(rs.getString(1));
				bean.setEName(rs.getString(2));
				bean.setEtel(rs.getString(3));
				bean.setEdate(rs.getString(4));
				bean.setEhw(rs.getInt(5));
				bean.setBid(rs.getString(6));
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
