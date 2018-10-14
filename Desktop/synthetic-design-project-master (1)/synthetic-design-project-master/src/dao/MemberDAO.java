package dao;

import java.sql.*;

import dto.MemberDTO;

public class MemberDAO {
	   private static MemberDAO dao = new MemberDAO();
	   private MemberDAO() {}
	   
	   public static MemberDAO getInstance() {
	      return dao;
	   }
	   // connect() 메소드
	   public Connection connect() {
	      Connection conn = null;
	      try {
	         Class.forName("com.mysql.jdbc.Driver");
	         String url = "jdbc:mysql://localhost:3306/webtoon";
	         String user = "root";
	         String password = "100400";
	         conn = DriverManager.getConnection(url, user, password);
	      } catch (Exception ex) {
	         System.out.println("드라이버 클래스 찾지 못함! : " + ex);
	      }
	      return conn;
	   }
	   // close() 메소드 오버라이딩
	   public void close(Connection conn, Statement stmt, ResultSet rs) {
	      if (rs != null) {
	         try {
	            rs.close();
	         } catch (Exception ex) {
	            System.out.println("cccc : " + ex);            
	         }
	      }
	      close(conn, stmt);
	   }

	   public void close(Connection conn, PreparedStatement ps) {
	      if (ps != null) {
	         try {
	            ps.close();
	         } catch (Exception ex) {
	            System.out.println("aaaa : " + ex);            
	         }
	      }

	      if (conn != null) {
	         try {
	            conn.close();
	         } catch (Exception ex) {
	            System.out.println("bbbbb : " + ex);            
	         }
	      }
	   }
	   public void close(Connection conn, Statement ps) {
	      if (ps != null) {
	         try {
	            ps.close();
	         } catch (Exception ex) {
	            System.out.println("aaaa : " + ex);            
	         }
	      }

	      if (conn != null) {
	         try {
	            conn.close();
	         } catch (Exception ex) {
	            System.out.println("bbbbb : " + ex);            
	         }
	      }
	   }

	public void memberJoin(MemberDTO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into member values(?, ?, ?);");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getPhone());
			pstmt.executeUpdate();
		} catch(Exception e) {
			System.out.println("회원가입 오류: " + e);
		} finally {
			close(conn, pstmt);
		}
	}

	public String memberLogin(String id) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String db_password = null;
		try {
			conn = connect();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select password from member where id = '" + id + "';");
			while(rs.next()) {
				db_password = rs.getString(1);
			}
		} catch(Exception e) {
			System.out.println("로그인 오류: " + e);
		} finally {
			close(conn,stmt);
		}
		return db_password;
	}

}
