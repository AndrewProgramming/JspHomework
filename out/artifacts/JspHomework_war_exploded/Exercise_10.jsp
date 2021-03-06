<!-- Exercise38_18.jsp -->
<%@ page import = "andrewprogramming.jsp.Exercise_10" %>
<jsp:useBean id = "factorialBeanId"
             class = "andrewprogramming.jsp.Exercise_10" scope = "page" >
</jsp:useBean>
<jsp:setProperty name = "factorialBeanId" property = "*" />
<html>
  <head>
    <title>
      FactorialBean
    </title>
  </head>
  <body>
  <h3>Compute Factorial Using a Bean</h3>
  <form method = "post">
    Enter new value: <input name = "number" /><br /><br />
    <input type = "submit" name = "Submit" 
      value = "Compute Factorial" />
    <input type = "reset" value = "Reset" /><br /><br />
    Factorial of 
      <jsp:getProperty name = "factorialBeanId" 
        property = "number" /> is
      <%= factorialBeanId.getFactorial() %>
    </form>
  </body>
</html>
