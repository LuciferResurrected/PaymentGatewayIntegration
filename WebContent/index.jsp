<%-- 
    Document   : index
    Created on : 30 AUG 2018
    Author     : Lucifer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String sessionid = request.getSession().getId();
	String contextpath = request.getContextPath();
	response.setHeader("SET-COOKIE", "JSESSIONID=" +  sessionid + ";Path=/;HttpOnly;Secure");
	response.sendRedirect("./admin/login.jsp");
%>
