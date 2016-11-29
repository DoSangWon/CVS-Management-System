package project;

import java.sql.*;
import java.util.Vector;

public class TotalizationMgr {
public DBConnectionMgr pool;
	
	public TotalizationMgr(){
		try {
				pool = DBConnectionMgr.getInstance();
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	
	public boolean insertTotalization(TotalizationBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;

		try {

			con = pool.getConnection();
			
			sql = "insert Totalization(branch_Id ,revenue ,expenditure ,totalizaion_Date) values(?,?,?,curdate())";
			pstmt = con.prepareStatement(sql);
			//System.out.println(bean.getBid());
			pstmt.setString(1,bean.getTbid());
			pstmt.setString(2,bean.getTrevenue());
			pstmt.setString(3,bean.getTexpenditure());

			
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
	
	
	public Vector<TotalizationBean> getTotalization() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<TotalizationBean> vlist = new Vector<TotalizationBean>();
		try {
			
			con = pool.getConnection();
			sql= "SELECT * FROM Totalization;";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				TotalizationBean bean = new TotalizationBean();
				bean.setTnum(rs.getString(1));
				bean.setTbid(rs.getString(2));
				bean.setTrevenue(rs.getString(3));
				bean.setTexpenditure(rs.getString(4));
				bean.setTdate(rs.getString(5));
				

				vlist.add(bean);
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	public boolean deleteTotalization(String _Tnum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
System.out.println(_Tnum);
		try {
			/* 120 ~ 126 line : �α����ϴ� �κ� �ڵ� */
			con = pool.getConnection();
			sql = "delete from Totalization where totalization_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, _Tnum);
			pstmt.executeUpdate();
			flag = rs.next();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}
	
	
	public boolean updateTotalization(TotalizationBean bean) {
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
			System.out.println(bean.getTnum());
			String sql = "update Totalization set revenue =?,expenditure =?,totalizaion_Date = curdate() where totalization_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getTrevenue());
			pstmt.setString(2, bean.getTexpenditure());
			pstmt.setString(3, bean.getTnum());
			
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
