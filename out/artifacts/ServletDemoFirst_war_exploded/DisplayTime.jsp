<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 2/6/20
  Time: 9:43 PM
  To change this template use File | Settings | File Templates.
--%>
<!-- DisplayTime.jsp -->
<%@page pageEncoding="GB18030" %>
<jsp:useBean id="timeBeanId" class="andrewprogramming.jsp.TimeBean" scope="application">
</jsp:useBean>
<jsp:setProperty name="timeBeanId" property="*"/>

<html>
<head>
    <title>
        Display Time
    </title>
</head>
<body>
<h3>Choose locale and time zone</h3>
Current time is
<%= timeBeanId.currentTimeString(timeBeanId.getLocaleIndex(),
        timeBeanId.getTimeZoneIndex()) %>
</body>
<html>
