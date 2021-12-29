<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="PremiumOrders.aspx.cs" Inherits="Moderna2.PremiumOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        The list of premium orders:</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ORDERID" HeaderText="ORDERID" SortExpression="ORDERID" />
                <asp:BoundField DataField="ORDERDATE" HeaderText="ORDERDATE" SortExpression="ORDERDATE" />
                <asp:BoundField DataField="DELIVDATE" HeaderText="DELIVDATE" SortExpression="DELIVDATE" />
                <asp:BoundField DataField="PAYDATE" HeaderText="PAYDATE" SortExpression="PAYDATE" />
                <asp:BoundField DataField="ORDER_COST" HeaderText="ORDER_COST" SortExpression="ORDER_COST" />
                <asp:BoundField DataField="CUSTID" HeaderText="CUSTID" SortExpression="CUSTID" />
                <asp:BoundField DataField="PROMOTIONID" HeaderText="PROMOTIONID" SortExpression="PROMOTIONID" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM &quot;PREMIUM_ORDERS&quot;"></asp:SqlDataSource>
    </p>
</asp:Content>
