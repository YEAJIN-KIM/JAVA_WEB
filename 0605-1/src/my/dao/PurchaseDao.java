package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.Purchase;
import my.util.JdbcUtil;

public class PurchaseDao {
	
	public void insert(Connection conn, Purchase purchase) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into purchase (buyerId,movieId,amount,purchaseDate,payment)"
					+ " values(?,?,?,?,?)");
			pstmt.setString(1, purchase.getBuyerId());
			pstmt.setInt(2, purchase.getMovieId());
			pstmt.setInt(3, purchase.getAmount());
			pstmt.setTimestamp(4, new Timestamp(purchase.getPurchaseDate().getTime()));
			pstmt.setInt(5, purchase.getPayment());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	// id 가지고 검색하는 기능
	public Purchase selectById(Connection conn, int purchaseId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Purchase purchase = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from purchase where purchaseId = ?");
			pstmt.setInt(1, purchaseId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				purchase = new Purchase(); 
				purchase.setPurchaseId(rs.getInt(1));
				purchase.setBuyerId(rs.getString(2));
				purchase.setMovieId(rs.getInt(3));
				purchase.setAmount(rs.getInt(4));
				purchase.setPurchaseDate(rs.getTimestamp(5));
				purchase.setPayment(rs.getInt(6));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return purchase;
	}
	
	public List<Purchase> selectLike(Connection conn, String target, String keyword)
		throws SQLException{
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		Purchase purchase = null;
		List<Purchase> purchases = new ArrayList<Purchase>(); // list 타입 배열의 선언
		try{
			pstmt = conn.prepareStatement
					("select * from purchase where "+target+" like ?");
					pstmt.setString(1, "%"+keyword+"%");
			rs= pstmt.executeQuery();
				while(rs.next()){
					purchase = new Purchase(); 
					purchase.setPurchaseId(rs.getInt(1));
					purchase.setBuyerId(rs.getString(2));
					purchase.setMovieId(rs.getInt(3));
					purchase.setAmount(rs.getInt(4));
					purchase.setPurchaseDate(rs.getTimestamp(5));
					purchase.setPayment(rs.getInt(6));
				purchases.add(purchase);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return purchases;
	}

	public void deleteById(Connection conn, int purchaseId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from purchase where purchaseId = ?");
			pstmt.setInt(1, purchaseId);
			pstmt.executeUpdate();			
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
		}
	}
	
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null; 
		ResultSet rs = null; 
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from purchase");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	public List<Purchase> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Purchase> purchaseList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from purchase ");
			rs  = pstmt.executeQuery(); 
			purchaseList = new ArrayList<Purchase>();
			while (rs.next()){
				Purchase purchase = new Purchase();
				purchase = new Purchase(); 
				purchase.setPurchaseId(rs.getInt(1));
				purchase.setBuyerId(rs.getString(2));
				purchase.setMovieId(rs.getInt(3));
				purchase.setAmount(rs.getInt(4));
				purchase.setPurchaseDate(rs.getTimestamp(5));
				purchase.setPayment(rs.getInt(6));
				purchaseList.add(purchase);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return purchaseList;
	}
}