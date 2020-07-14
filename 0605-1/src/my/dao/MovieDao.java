package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.Movie;
import my.util.JdbcUtil;

public class MovieDao {
	
	public void insert(Connection conn, Movie movie) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into movie (movieName,maker,price,launchDate,imageName)"
					+ " values(?,?,?,?,?)");
			pstmt.setString(1, movie.getMovieName());
			pstmt.setString(2, movie.getMaker());
			pstmt.setInt(3, movie.getPrice());
			pstmt.setTimestamp(4, new Timestamp(movie.getLaunchDate().getTime()));
			pstmt.setString(5, movie.getImageName());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	// id 가지고 검색하는 기능
	public Movie selectById(Connection conn, int movieId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Movie movie = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from movie where movieId = ?");
			pstmt.setInt(1, movieId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				movie = new Movie(); 
				movie.setMovieId(rs.getInt(1));
				movie.setMovieName(rs.getString(2));
				movie.setMaker(rs.getString(3));
				movie.setPrice(rs.getInt(4));
				movie.setLaunchDate(rs.getTimestamp(5));
				movie.setImageName(rs.getString(6));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return movie;
	}
	
	public List<Movie> selectLike(Connection conn, String target, String keyword)
		throws SQLException{
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		Movie movie = null;
		List<Movie> movies = new ArrayList<Movie>(); // list 타입 배열의 선언
		try{
			pstmt = conn.prepareStatement
					("select * from movie where "+target+" like ?");
					pstmt.setString(1, "%"+keyword+"%");
			rs= pstmt.executeQuery();
				while(rs.next()){
				movie = new Movie();
				movie.setMovieId(rs.getInt(1));
				movie.setMovieName(rs.getString(2));
				movie.setMaker(rs.getString(3));
				movie.setPrice(rs.getInt(4));
				movie.setLaunchDate(rs.getTimestamp(5));
				movie.setImageName(rs.getString(6));
				movies.add(movie);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return movies;
	}

	// 수정하는 기능
	public void update(Connection conn, Movie movie) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update movie set movieName=?,maker=?,price=?, "+ "   launchDate=?, imageName=? where movieId=?");
			pstmt.setString(1, movie.getMovieName());
			pstmt.setString(2, movie.getMaker());
			pstmt.setInt(3, movie.getPrice());
			pstmt.setTimestamp(4, new Timestamp(movie.getLaunchDate().getTime()));
			pstmt.setString(5, movie.getImageName()); // 숫자 5인거에 주의 (?하나 추가되었기 때문)
			pstmt.setInt(6, movie.getMovieId());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void deleteById(Connection conn, int movieId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from movie where movieId = ?");
			pstmt.setInt(1, movieId);
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
			rs = stmt.executeQuery("select count(*) from movie");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	public List<Movie> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Movie> movieList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from movie ");
			rs  = pstmt.executeQuery(); 
			movieList = new ArrayList<Movie>();
			while (rs.next()){
				Movie movie = new Movie();
				movie.setMovieId(rs.getInt(1));
				movie.setMovieName(rs.getString(2));
				movie.setMaker(rs.getString(3));
				movie.setPrice(rs.getInt(4));
				movie.setLaunchDate(rs.getTimestamp(5));
				movie.setImageName(rs.getString(6));
				movieList.add(movie);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return movieList;
	}
}