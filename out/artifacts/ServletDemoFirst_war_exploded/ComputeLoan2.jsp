<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 2/6/20
  Time: 9:22 PM
  To change this template use File | Settings | File Templates.
--%>
<!-- ComputeLoan2.jsp -->
<html>
<head>
    <title>ComputeLoan Using the Loan Class</title>
</head>
<body>
<jsp:useBean id="loan" class="andrewprogramming.jsp.Loan" scope="page"></jsp:useBean>

<jsp:setProperty name="loan" property="*"/>

Loan Amount: <%= loan.getLoanAmount() %><br/>
Annual Interest Rate: <%= loan.getAnnualInterestRate() %><br/>
Number of Years: <%= loan.getNumberOfYears() %><br/>
<b>Monthly Payment: <%= loan.getMonthlyPayment() %><br/>
    Total Payment: <%= loan.getTotalPayment() %><br/></b>
</body>
</html>