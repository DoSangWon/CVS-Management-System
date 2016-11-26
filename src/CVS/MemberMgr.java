package CVS;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberMgr {
	private DBConnectionMgr pool;

	public MemberMgr() {
		try {
		// 14 line : DBConnectionMgr애서 pool instance 얻어오는 부분 코딩 
			pool=DBConnectionMgr.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public boolean checkId(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try {
		/* 28 ~ 32 line : ID 중복확인하는 부분 코딩 */	
			if(rs.next()){
				con = pool.getConnection();
				sql="select id from Branch_User where Branch_Owner_Id=?";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, id);
				flag = pstmt.executeQuery().next();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
		}
		return flag;
	}
	public boolean loginMember(String id, String pass) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try {
			/* 120 ~ 126 line : 로그인하는 부분 코딩 */
			con = pool.getConnection();
			sql="select id from Branch_User where Branch_Owner_Id=? and Branch_Owner_Pw =?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs=pstmt.executeQuery();
			flag = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}

}
