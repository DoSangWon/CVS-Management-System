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
				bean.setEname(rs.getString(2));
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
	
	
	public boolean updateEmployee(String eid,String eName,String etel,int ehw) {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean flag = false;
		try {

			/**********************************************************************
			  << ȸ������ �����ϴ� �κ� �ڵ� >>
			***********************************************************************
			1. con ������ connectionpool�� connection ����
			2. Update sql ������ ������ �ۼ�
 		  3. Prepared Statement �ۼ�
		  4. Prepared Statement�� �Է¹��� �� setting
		  5. Prepared Statement�� ����	�� ��� �� �ڹٺ�� ����										
			6. Prepared Statement�� ���� �Ϸ�Ǹ�  boolean Ÿ������ ��� ��ȯ									
			**********************************************************************/
			con = pool.getConnection();
			System.out.println("1:"+eid);
			System.out.println("2:"+eName);
			System.out.println("3:"+etel);
			System.out.println("4:"+ehw);
			String sql = "update Employee set Employee_Name =?,Employee_tel =?,Employee_hourly_wage =? where Employee_Id=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, eName);
			pstmt.setString(2, etel);
			pstmt.setInt(3, ehw);
			pstmt.setString(4, eid);

			
			int count = pstmt.executeUpdate();
			if (count > 0)
				flag = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	
	public boolean deleteEmployee(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
System.out.println(id);
		try {
			/* 120 ~ 126 line : �α����ϴ� �κ� �ڵ� */
			con = pool.getConnection();
			sql = "delete from Employee where Employee_Id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			flag = rs.next();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}
	
	
	public boolean insertEmployee(EmployeeBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;

		try {

			con = pool.getConnection();
			
			sql = "insert Employee(Employee_Id ,Employee_Name,Employee_tel,Employee_date,Employee_hourly_wage,branch_Id) values(?,?,?,curdate(),?,?)";
			pstmt = con.prepareStatement(sql);
			//System.out.println(bean.getBid());
			pstmt.setString(1,bean.getEid());
			pstmt.setString(2,bean.getEname());
			pstmt.setString(3,bean.getEtel());
			pstmt.setInt(4,bean.getEhw());
			pstmt.setString(5,bean.getBid());

			
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
