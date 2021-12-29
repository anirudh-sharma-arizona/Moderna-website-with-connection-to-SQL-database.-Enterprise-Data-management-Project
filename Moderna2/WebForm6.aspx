<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="Moderna2.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            font-style: italic;
            text-decoration: underline;
            color: #800000;
        }
        #form1 {
            background-color: #CCFF66;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p class="auto-style1">
            <strong>New Order Page</strong></p>
        <br />
        Product <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="PD0001">Covid19 vaccine 1st</asp:ListItem>
            <asp:ListItem Value="PD0002">Covid19 vaccine 2st</asp:ListItem>
            <asp:ListItem>Flu vaccine</asp:ListItem>
            <asp:ListItem Value="PD0004">Covid19 vaccine 3st</asp:ListItem>
            <asp:ListItem Value="PD0005">RSV vaccine</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Quantity
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Total Amount
        <asp:TextBox ID="TextBox2" runat="server" style="background-color: #666699"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Place Order" />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
