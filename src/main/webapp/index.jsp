<%@ page import="java.util.ArrayList" %>
<%@ page import="com.codegym.Customer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: anhduc
  Date: 21/04/2019
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Show_list_Customer</title>
  </head>
  <body>
  <%
    ArrayList<Customer> listCustomer = new ArrayList<Customer>();
    listCustomer.add(new Customer("Nguyễn Văn Đức","1999-12-27","Thanh Hóa ", "Anh"));
    listCustomer.add(new Customer("Nguyễn Văn Định","1996-08-21","Bac Giang","Anh"));
    listCustomer.add(new Customer("Nguyễn Đức Hải","1995-08-15","Nam Dinh","Anh"));
    listCustomer.add(new Customer("Trần Văn Chính","1998-08-25","Thai Nguyen","Anh"));
    listCustomer.add(new Customer("Nguyễn Thị Dung","1994-05-20","Da Nang","Anh"));
    request.setAttribute("data", listCustomer);
  %>
  <form >
    <div style="text-align: center;">
      <h1>List Customer</h1>
    </div>
    <table border ="1" width="500" align="center">
      <tr bgcolor="00FF77">
        <th><b>Name</b></th>
        <th><b>Birthday</b></th>
        <th><b>Address</b></th>
        <th><b>Picture</b></th>
      </tr>
      <c:forEach var="rows" items="${requestScope.data}">
        <tr>
          <td>${rows.getName()}</td>
          <td>${rows.getBirthday()}</td>
          <td>${rows.getAddress()}</td>
          <td>${rows.getPicture()}</td>
        </tr>
      </c:forEach>
    </table>
  </form>
  </body>
</html>
