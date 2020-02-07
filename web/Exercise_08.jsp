<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercise_08</title>
    </head>
    <body>
        <%@ page import = "andrewprogramming.jsp.Exercise_08" %>
        <jsp:useBean id = "poll" class = "andrewprogramming.jsp.Exercise_08"
        scope = "page" ></jsp:useBean>
        <% String yesOrNo = request.getParameter("yesorno");
        if (yesOrNo.equals("Yes")) poll.increaseYesCount();
        else if (yesOrNo.equals("No")) poll.increaseNoCount();
        %>
  
        The current Yes count is <%= poll.getYesCount() %><br>
        The current No count is <%= poll.getNoCount() %><br>
    </body>
</html>
