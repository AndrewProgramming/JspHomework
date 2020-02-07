<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 2/6/20
  Time: 9:30 PM
  To change this template use File | Settings | File Templates.
--%>
<!-- FactorialBean.jsp -->
<%@ page import="java.text.NumberFormat" %>
<jsp:useBean id="factorialBeanId"
             class="andrewprogramming.jsp.FactorialBean" scope="page">
</jsp:useBean>
<jsp:setProperty name="factorialBeanId" property="*"/>
<html>
<head>
    <title>
        FactorialBean
    </title>
</head>
<body>
<h3>Compute Factorial Using a Bean</h3>
<form method="post">
    Enter new value: <input name="number" value=
    <jsp:getProperty name="factorialBeanId" property="number"/>><br/><br/>
    <input type="submit" name="Submit" value="Compute Factorial"/>
    <input type="reset" value="Reset"/><br/><br/>
    Factorial of
    <jsp:getProperty name="factorialBeanId" property="number"/>
    is
    <% NumberFormat format = NumberFormat.getNumberInstance(); %>
    <%= format.format(factorialBeanId.getFactorial()) %>
</form>
</body>
</html>