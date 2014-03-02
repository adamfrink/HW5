<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="StyleSheet" type="text/css" href="./Style.css" />
</head>
<body>
    <form id="form1" runat="server">
    
      
        <div class ="center">
    
        Adam&#39;s &quot;Get Money&quot; Mortgage Calculator
        
        <br /><br />
     
        *Loan Amount:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <br /><br />      
        
        *Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <br /><br />

        *Loan Term (Yrs):&nbsp; <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <br /> 
        <br />
        *Fields denoted by an asterisk(*) are required<br />

        &nbsp;<asp:Button ID="clearButton" runat="server" Text="Clear" Width="75px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" Width="150px" />
        
        &nbsp;&nbsp;
        
        <br /><br />
        
        <%If Not IsPostBack Then%> 
        <p> Welcome to Adam's "Get Money" mortgage calculator! Complete the above fields to have your monthly loan repayment schedule calculated for you.</p>
        
        <%Else%>       
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        <br /><br />
        <asp:GridView ID="loanGridView" runat="server" />
        <%End If%>
        
    
    </div>
    </form>
</body>
</html>
