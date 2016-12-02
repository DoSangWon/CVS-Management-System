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
	
	
	public Vector<TotalizationBean> getTotalization(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<TotalizationBean> vlist = new Vector<TotalizationBean>();
		try {
			
			con = pool.getConnection();
			System.out.println("�Է¹��� ���̵�� : "+id);
			sql= "select a.totalization_num,a.branch_Id,a.revenue,a.expenditure,a.totalizaion_Date from Totalization a inner JOIN branchinfo b ON a.branch_Id = b.branch_Id where (select Branch_Owner_Id from branch_user) = ?;";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
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
	
	
	public boolean updateTotalization(int tnum,String tbid,int trevenue,int texpenditure) {
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
			System.out.println("1:"+tnum);
			System.out.println("2:"+trevenue);
			System.out.println("3:"+texpenditure);
			System.out.println("4:"+texpenditure);
			String sql = "update Totalization set branch_Id=?,revenue=?,expenditure=? where totalization_num=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, tbid);
			pstmt.setInt(2, trevenue);
			pstmt.setInt(3, texpenditure);
			pstmt.setInt(4, tnum);

			
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
	
	public boolean deleteTotalization(int tnum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
System.out.println(tnum);
		try {
			/* 120 ~ 126 line : �α����ϴ� �κ� �ڵ� */
			con = pool.getConnection();
			sql = "delete from Totalization where totalization_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, tnum);
			pstmt.executeUpdate();
			flag = rs.next();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}
	
	
}
