﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="StyleSheet" type="text/css" href="./Style.css" />
</head>
<body>
    <form id="form1" runat="server">
    
      
        <div class ="center">
    
        <h2>Adam&#39;s &quot;Get Money&quot; Mortgage Calculator</h2>
        
     
     
        *Loan Amount:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbLoanAmt">Loan Amount is required</asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        *Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Annual Interest Rate is required"></asp:RequiredFieldValidator>
        
        <br /><br />

        *Loan Term (Yrs):&nbsp; <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Loan Term is required"></asp:RequiredFieldValidator>
        
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
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br /><br />
        <asp:GridView ID="loanGridView" Class="textCenter" runat="server" >
            <AlternatingRowStyle CssClass ="alt" BorderStyle="None" />
            </asp:GridView>
        <%End If%>
        
    
    </div>
    </form>
</body>
</html>
