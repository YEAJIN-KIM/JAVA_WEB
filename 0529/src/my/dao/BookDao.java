package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.Book;
import my.util.JdbcUtil;

public class BookDao {
	
	public void insert(Connection conn, Book book) 	// parameter로 conn 와 외부(jsp)로부터 book 객체를 받아옴.
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into book (bookname, author, price)" // bookid 는 auto impliment라 안넣는다. sql문장 | calum 이름들. 
					+ " values(?,?,?)");				  //? 3개
			pstmt.setString(1, book.getBookName());		  //? 3개니까 pstmt로 3개.
			pstmt.setString(2, book.getAuthor());
			pstmt.setInt(3, book.getPrice());
			
			pstmt.executeUpdate();						// 완성된 sql문 가지고 executeUpdate
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public List<Book> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Book> bookList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from book "); // book 이라는 테이블의 모든 칼럼을 가져와서 ..
			rs  = pstmt.executeQuery();  // rs에 저장해라. db 에 있는 값들이 rs에 들어있다.(배열)
			bookList = new ArrayList<Book>();	// book이라는 배열구조,
			// next가 있으면 반복작업한다.
			while (rs.next()){
				Book book = new Book();
				book.setBookId(rs.getInt(1)); // db에서 가져온 내용들
				book.setBookName(rs.getString(2)); // db에서 가져온 내용들
				book.setAuthor(rs.getString(3)); // db에서 가져온 내용들
				book.setPrice(rs.getInt(4)); // db에서 가져온 내용들
				bookList.add(book); // book에다가 배열 구조로 붙여나간다.
			}
		} catch (SQLException e){
			
		
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return bookList;
	}
	
	public Book selectById(Connection conn, int bookId) // 책에 아이디를 넣어주고, 그 값으로 book을 리턴하는 객체. 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Book book = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from book where bookId = ?"); // bookid를 찾는다. 방법 - 위에서 입력받은 bookId를 ? 에 넣는다.
			pstmt.setInt(1, bookId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				book = new Book(); 
				book.setBookId(rs.getInt(1));
				book.setBookName(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setPrice(rs.getInt(4));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return book;
	}
	
	// 유사검색 (like 검색) % 역할.. ? ---> 배열 처리 전(1개 출력(은 주석처리(배열 = 여러개 출력)
	public List<Book> selectLike(Connection conn, String bookName) // 배열 하기 위해 새로운 선언
	//public Book selectLike(Connection conn, String bookName)
		throws SQLException{
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		Book book = null;
		List<Book> bookList = null; // list 타입 배열의 선언
		try{
			pstmt = conn.prepareStatement
					("select * from book where bookName like ?");
					pstmt.setString(1, "%"+bookName+"%");
			rs= pstmt.executeQuery();
			bookList = new ArrayList<Book>(); // 배열의 확정
			//if (rs.next()){
			// if 문을 while 문으로 바꿔서 반복
				while(rs.next()){
				book = new Book();
				book.setBookId(rs.getInt(1));
				book.setBookName(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setPrice(rs.getInt(4));
				bookList.add(book); // 배열 하기 위한 추가 ( 계속 반복한다)
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return bookList;
		//return book;
	}
	
	// 검색어 포함 통합검색 ?
	
	public List<Book> selectAll(Connection conn, String target, String search) // 배열 하기 위해 새로운 선언 / 뭘 타겟으로 할거냐(name인지 author 인지.. / 뭘 검색할거냐(타겟에 있는 단어)
	//public Book selectLike(Connection conn, String bookName)
		throws SQLException{
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		Book book = null;
		List<Book> bookList = null; // list 타입 배열의 선언
		try{
			pstmt = conn.prepareStatement
					("select * from book where " + target + " like ?"); // 타겟.. where 하고 like 앞뒤에 한칸 뛰는게 중요
					pstmt.setString(1, "%"+search+"%"); // 타겟에 대해 바꿔가며 검색
			rs= pstmt.executeQuery();
			bookList = new ArrayList<Book>(); // 배열의 확정
				while(rs.next()){
				book = new Book();
				book.setBookId(rs.getInt(1));
				book.setBookName(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setPrice(rs.getInt(4));
				bookList.add(book); // 배열 하기 위한 추가 ( 계속 반복한다)
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return bookList;
	}
	// 숫자로 찾기
	public List<Book> selectPrice(Connection conn, String sign, int price)
		throws SQLException{
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		Book book = null;
		List<Book> bookList = null; // list 타입 배열의 선언
		try{
			pstmt = conn.prepareStatement
					("select * from book where price " + sign + " ?"); // 타겟.. where 하고 like 앞뒤에 한칸 뛰는게 중요 / sign = 크다 , 작다 라는 정보. 
			pstmt.setInt(1, price); // ? 가 int 니까 setInt
			rs= pstmt.executeQuery();
			bookList = new ArrayList<Book>(); // 배열의 확정
				while(rs.next()){
				book = new Book();
				book.setBookId(rs.getInt(1));
				book.setBookName(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setPrice(rs.getInt(4));
				bookList.add(book); // 배열 하기 위한 추가 ( 계속 반복한다)
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return bookList;
	}
	// like = 유사검색이다. and 검색.. bookname을 포함하면서 그리고 가격이 ... 일때.
	public List<Book> selectPrice2(Connection conn, String sign, int price , String bookName)
			throws SQLException{
			PreparedStatement pstmt=null;
			ResultSet rs = null;
			Book book = null;
			List<Book> bookList = null; // list 타입 배열의 선언
			try{
				pstmt = conn.prepareStatement
						("select * from book where bookName like ? and price " + sign + " ?"); // 타겟.. where 하고 like 앞뒤에 한칸 뛰는게 중요 / sign = 크다 , 작다 라는 정보. 
				pstmt.setString(1, "%"+bookName+"%"); // 유사검색일떈 양쪽에 %
				pstmt.setInt(2, price); // ? 가 int 니까 setInt and ?가 두개니까 2번째에 해당하는 price 의 숫자는 2
				rs= pstmt.executeQuery();
				bookList = new ArrayList<Book>(); // 배열의 확정
					while(rs.next()){
					book = new Book();
					book.setBookId(rs.getInt(1));
					book.setBookName(rs.getString(2));
					book.setAuthor(rs.getString(3));
					book.setPrice(rs.getInt(4));
					bookList.add(book); // 배열 하기 위한 추가 ( 계속 반복한다)
				}
			} catch (SQLException e){
				e.printStackTrace();
			} finally {
				JdbcUtil.close(conn);
				JdbcUtil.close(pstmt);
				JdbcUtil.close(rs);
			}
			return bookList;
		}
	
	 /*
	public void update(Connection conn, Book book) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update book set guestname=?,password=?,book=?, "
					+ "   registertime=? where bookId=?");
			pstmt.setString(1, book.getGuestName());
			pstmt.setString(2, book.getPassword());
			pstmt.setString(3, book.getBook());
			pstmt.setTimestamp(4, new Timestamp(book.getRegisterTime().getTime()));
			pstmt.setInt(5, book.getBookId());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void deleteById(Connection conn, int bookId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from book where bookId = ?");
			pstmt.setInt(1, bookId);
			pstmt.executeUpdate();			
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null; 
		ResultSet rs = null; 
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from book");
			rs.next();
			return rs.getInt(1);
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	
	 */
}




















