<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-07-21
  Time: 오전 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title></title>
</head>
<body>
  <h1>Hello</h1>

  <table>
    <c:forEach var="customer" items="${customerList.content }" varStatus="status">
      <tr>
        <td>${customer.userId }</td>
      </tr>
    </c:forEach>

  </table>
</body>
</html>
