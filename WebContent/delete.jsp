<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.PhoneDao" %>


<%
	PhoneDao phoneDao = new PhoneDao();	


	//파라미터 꺼내기
	int personId = Integer.parseInt( request.getParameter("id") );
	//System.out.println(personId);
	
	
    //삭제하기 --> phoneDao.delete(3);
	int count = phoneDao.personDelete(personId);
	//System.out.println(count);
	
	
	//리디렉트(리스트요청);
	response.sendRedirect("./list.jsp");


%>
    

