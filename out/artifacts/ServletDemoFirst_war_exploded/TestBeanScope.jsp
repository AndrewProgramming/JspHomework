<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 2/6/20
  Time: 7:33 PM
  To change this template use File | Settings | File Templates.
--%>
<!-- TestBeanScope.jsp -->
<%@ page import = "andrewprogramming.jsp.Count" %>
<jsp:useBean id = "count" scope = "application"
             class = "andrewprogramming.jsp.Count">
</jsp:useBean>
<html>
<head>
    <title>TestBeanScope</title>
</head>
<body>
<h3>Testing Bean Scope in JSP (Application)</h3>
<% count.increaseCount(); %>
You are visitor number <%= count.getCount() %><br />
From host: <%= request.getRemoteHost() %>
and session: <%= session.getId() %>
</body>
</html>
