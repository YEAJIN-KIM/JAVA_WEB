package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.Buyer;
import my.util.JdbcUtil;

public class BuyerDao {
	
	public void insert(Connection conn, Buyer buyer) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into buyer values(?,?,?,?)"); // 괄호 - 전체 필드에서 일부분만 입력할 때
			pstmt.setString(1, buyer.getBuyerId());
			pstmt.setString(2, buyer.getBuyerName());
			pstmt.setString(3, buyer.getPassword());
			pstmt.setInt(4, buyer.getPoint());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public boolean checkPassword(Connection conn, String buyerId, String password) // 비밀번호 = 아이디면 로그인 하게 해주는 
			throws SQLException {
		// db에 입력한 password equals 입력한 패스워드
		Buyer buyer = selectById(conn, buyerId);
		if (buyer != null){
			if(buyer.getPassword().equals(password)){
				return true;
			}
		}
		return false;
	}
	
	public Buyer selectById(Connection conn, String buyerId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Buyer buyer = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from buyer where buyerId = ?");
			pstmt.setString(1, buyerId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				buyer = new Buyer(); 
				buyer.setBuyerId(rs.getString(1));
				buyer.setBuyerName(rs.getString(2));
				buyer.setPassword(rs.getString(3));
				buyer.setPoint(rs.getInt(4));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn); ---- purchase에 설명 있음. close하면 죽어도 안돌아감
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return buyer;
	}
	
	public void deleteById(Connection conn, String buyerId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from buyer where buyerId = ?");
			pstmt.setString(1, buyerId);
			pstmt.executeUpdate();			
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public List<Buyer> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Buyer> buyerList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from buyer ");
			rs  = pstmt.executeQuery(); 
			buyerList = new ArrayList<Buyer>();
			while (rs.next()){
				Buyer buyer = new Buyer();
				buyer.setBuyerId(rs.getString(1));
				buyer.setBuyerName(rs.getString(2));
				buyer.setPassword(rs.getString(3));
				buyer.setPoint(rs.getInt(4)); 
				buyerList.add(buyer);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return buyerList; // 배열을 리턴한다
	}
}