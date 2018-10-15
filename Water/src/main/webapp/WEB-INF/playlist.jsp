<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%-- <%@page import="myinfo.db.DbConnect"%> --%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<playlist>
<%!
	String url="jdbc:oracle:thin:@192.168.70.53:1521:xe";
	String user="stu01";
	String password="a1234";
	
	
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("오라클 드라이버 성공");
		} catch(Exception e){
			System.out.println("오라클 드라이버 오류:"+e.getMessage());
		}

%>
<%

	String username=(String)session.getAttribute("user_name");
	Connection conn=null;
	try {
		conn=DriverManager.getConnection(url, user, password);
		
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from playlist where userid=? order by pnum";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, username);
			rs=pstmt.executeQuery();
			while(rs.next()){
				%>
				<plist>
					<pnum><%=rs.getString("pnum") %></pnum>
					<artist><%=rs.getString("artist") %></artist>
					<title><%=rs.getString("title") %></title>
					<youurl><%=rs.getString("youurl") %></youurl>
				</plist>
				<%
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	

%>
</playlist>