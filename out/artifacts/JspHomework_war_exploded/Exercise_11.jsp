<!-- GuessNumber.jsp -->
<%@ page import = "andrewprogramming.jsp.GuessNumberBean" %>
<jsp:useBean id = "guessNumberBean"
             class = "andrewprogramming.jsp.GuessNumberBean" scope = "session" >
</jsp:useBean>
<jsp:setProperty name = "guessNumberBean" property = "*" />
<html>
  <head>
    <title>
      GuessNumber
    </title>
  </head>
  <body>
  <h3>Guess a number from 1 to 1000</h3>
  <form method = "post" action = "http://localhost:8080/Exercise_11.jsp">
    Guess a number: <input name = "guess" value =
      <% if (guessNumberBean.isGuessValid()) { %>
        <%= guessNumberBean.getGuess() %>
      <% } else %>
        ""
       /><br /><br />
    <input type = "submit" name = "Submit" value = "Guess" />
    <input type = "reset" value = "Reset" /><br /><br />
    <%= guessNumberBean.getResponse() %>
  </form>
  </body>
</html>

