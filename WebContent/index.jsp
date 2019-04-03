<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
String DB_URL = "jdbc:mysql://localhost:3306?useSSL=false&serverTimezone=Asia/Shanghai";
String DB_USERNAME = "root";
String DB_PASSWORD = "root";
 
try {
    Class.forName(DB_DRIVER);
    Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
    Statement statement = connection.createStatement();
    statement.execute("USE `test`");
    ResultSet resultSet = statement.executeQuery("SELECT * FROM `develop`");
    while(resultSet.next()) {
        System.out.println(resultSet.getString("title"));
    }
    resultSet.close();
    statement.close();
    connection.close();
} catch (Exception e) {
    e.printStackTrace();
}
%>

</body>
</html>