<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Net Pay Calculator</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Salary Calculator</h1>
    
        Hourly Wage:&nbsp;
        <asp:TextBox ID="wageTB" runat="server" style="margin-left: 90px"></asp:TextBox>
        <br />
        <br />
        Hours Worked This Week:
        <asp:TextBox ID="hoursTB" runat="server" style="margin-left: 18px"></asp:TextBox>
        <br />
        <br />
        Pre-Tax Deductions:
        <asp:TextBox ID="preTB" runat="server" style="margin-left: 58px"></asp:TextBox>
        <br />
        <br />
        After-Tax Deductions:
        <asp:TextBox ID="afterTB" runat="server" style="margin-left: 49px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="submitBTN" runat="server" Text="Submit" BackColor="White" Width="119px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="clearBTN" runat="server" Text="Clear" BackColor="White" Width="132px" />
        <br />
        <br />
        Estimated
        Net Pay:
        <asp:Label ID="netPayLBL" runat="server" BorderStyle="Inset" BackColor="White" Height="25px" style="margin-left: 58px" Width="119px"></asp:Label>
    
    </div>
    </form>
</body>
</html>
