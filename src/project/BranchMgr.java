package project;

import java.sql.*;
import java.util.Vector;

public class BranchMgr {
	public DBConnectionMgr pool;
	
	public BranchMgr(){
		try {
				pool = DBConnectionMgr.getInstance();
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	
	public boolean insertBranch(BranchBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;

		try {

			con = pool.getConnection();
			
			sql = "insert BranchInfo(branch_Id ,branch_Loc ,branch_Owner_Name ,branch_tel ,branch_Owner_tel) values(?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			//System.out.println(bean.getBid());
			pstmt.setString(1,bean.getBid());
			pstmt.setString(2,bean.getbLoc());
			pstmt.setString(3,bean.getbName());
			pstmt.setString(4,bean.getbTel());
			pstmt.setString(5,bean.getbOTel());

			
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
	
	
	public Vector<BranchBean> getBranch() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<BranchBean> vlist = new Vector<BranchBean>();
		try {
			
			con = pool.getConnection();
			sql= "SELECT * FROM BranchInfo;";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				BranchBean bean = new BranchBean();
				bean.setBid(rs.getString(1));
				bean.setbLoc(rs.getString(2));
				bean.setbName(rs.getString(3));
				bean.setbTel(rs.getString(4));
				bean.setbOTel(rs.getString(5));
				vlist.add(bean);
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	public boolean deleteBranch(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
System.out.println(id);
		try {
			/* 120 ~ 126 line : �α����ϴ� �κ� �ڵ� */
			con = pool.getConnection();
			sql = "delete from BranchInfo where branch_Id=?";
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
	
	
	public boolean updateBranch(BranchBean bean) {
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
			System.out.println(bean.getBid());
			String sql = "update BranchInfo set branch_Loc =?,branch_Owner_Name =?,branch_tel =?,branch_Owner_tel =? where branch_Id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getbLoc());
			pstmt.setString(2, bean.getbName());
			pstmt.setString(3, bean.getbTel());
			pstmt.setString(4, bean.getbOTel());
			pstmt.setString(5, bean.getBid());
			
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
	
}
