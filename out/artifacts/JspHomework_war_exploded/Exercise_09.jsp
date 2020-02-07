<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 2/7/20
  Time: 12:38 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id = "additionTutor" scope = "session"
             class = "andrewprogramming.jsp.AdditionTutor">
</jsp:useBean>

<html>
<head>
    <title>
        Addition Quiz
    </title>
</head>
<body>
<form method = "post" action = "http://localhost:8080/Exercise_09DisplayResult.jsp">
    <% additionTutor.refresh(); %>
    <table>
        <% for (int i = 0; i < 10; i++) { %>
        <tr>
            <td>
                <%= additionTutor.number1[i] %>
            </td>
            <td>
                +
            </td>
            <td><%= additionTutor.number2[i] %>
            </td>
            <td>
                =
            </td>
            <td>
                <input name = "<%= "result" + i%>" size = 2/>
            </td>
        </tr>

        <% } %>
    </table>
    <br />
    <input type = "submit" name = "Submit"
           value = "Submit" /> Click the browser's Refresh button to get a new quiz
</form>
</body>
</html>