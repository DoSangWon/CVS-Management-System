package project;

import java.sql.*;
import java.util.Vector;

import project.DBConnectionMgr;

public class MemberMgr {

	public DBConnectionMgr pool;

	public MemberMgr() {
		try {
		// 14 line : DBConnectionMgr애서 pool instance 얻어오는 부분 코딩 
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ID 중복확인
	public boolean checkId(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;

		try {
		/* 28 ~ 32 line : ID 중복확인하는 부분 코딩 */	
		con = pool.getConnection();
		sql= "SELECT Branch_Owner_Id FROM Branch_User where Branch_Owner_Id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		flag = pstmt.executeQuery().next();
		
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
		}
		return flag;
	}

	// 우편번호 검색
	public Vector<ZipcodeBean> zipcodeRead(String area3) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<ZipcodeBean> vlist = new Vector<ZipcodeBean>();
		try {
			/* 49 ~ 61 line : 우편번호 검색하는 부분 코딩 */
			con = pool.getConnection();
			sql= "SELECT * FROM tblzipcode where area3 like ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%" + area3 + "%");
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				ZipcodeBean bean = new ZipcodeBean();
				bean.setZipcode(rs.getString(1));
				bean.setArea1(rs.getString(2));
				bean.setArea2(rs.getString(3));
				bean.setArea3(rs.getString(4));
				bean.setArea4(rs.getString(5));
				vlist.add(bean);
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}

	// 회원가입
	
	public boolean insertMember(MemberBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;

		try {

			/* 79 ~ 103 line : 회원가입하는 부분 코딩 
			단, 취미필드에는 인터넷, 여행, 게임, 영화, 운동 중에 일치하는 값은 1로 설정하고 그렇지 않으면 0으로 설정된   
				배열 5자리 문자열로 tblMemeber에 삽입함	*/
			con = pool.getConnection();
			sql = "insert Branch_User(Branch_Owner_Id ,Branch_Owner_Pw ,branch_Owner_Name ,branch_Owner_tel ,branch_Owner_date) values(?,?,?,?,curdate())";
			pstmt = con.prepareStatement(sql);
			System.out.println(bean.getId());
			pstmt.setString(1,bean.getId() );
			pstmt.setString(2,bean.getPw() );
			pstmt.setString(3,bean.getName() );
			pstmt.setString(4,bean.getTel() );

			
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
	
	// 로그인
	public boolean loginMember(String id, String pass) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		System.out.println("id는  : " + id + "pw는 : " + pass);
		try {
			/* 120 ~ 126 line : 로그인하는 부분 코딩 */
			con = pool.getConnection();
			sql = "select Branch_Owner_Id from Branch_User where Branch_Owner_Id=? and Branch_Owner_Pw=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			flag = rs.next();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}

	/*************
	 * ch16 필요한 메소드
	 * ************/

	// 회원정보가져오기
	public MemberBean getMember() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberBean bean = null;
		try {
			/* 146 ~ 167 line : 회원정보가져오는 부분 코딩 */
			con = pool.getConnection();
			String sql = "select * from Branch_User";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				bean = new MemberBean();
				bean.setId(rs.getString("Branch_Owner_Id"));
				bean.setPw(rs.getString("Branch_Owner_Pw"));
				bean.setName(rs.getString("branch_Owner_Name"));
				bean.setTel(rs.getString("branch_Owner_tel"));
				bean.setDate(rs.getString("branch_Owner_date"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return bean;
	}

	// 회원정보수정
	public boolean updateMember(MemberBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean flag = false;
		try {
			/* 183 ~ 209 line : 회원정보수정하는 부분 코딩 */
			con = pool.getConnection();
			String sql = "update Branch_User set Branch_Owner_Pw=?,branch_Owner_Name=?,branch_Owner_tel=? where Branch_Owner_Id =?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getPw());
			pstmt.setString(2, bean.getName());
			pstmt.setString(3, bean.getTel());
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}

}