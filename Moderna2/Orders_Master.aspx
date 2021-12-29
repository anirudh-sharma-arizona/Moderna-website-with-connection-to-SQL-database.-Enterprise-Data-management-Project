<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Orders_Master.aspx.cs" Inherits="Moderna2.Orders_Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        Order Repository:</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ORDERID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ORDERID" HeaderText="ORDERID" ReadOnly="True" SortExpression="ORDERID" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM &quot;ORDERS&quot;" DeleteCommand="DELETE FROM &quot;ORDERS&quot; WHERE &quot;ORDERID&quot; = ?" InsertCommand="INSERT INTO &quot;ORDERS&quot; (&quot;ORDERID&quot;, &quot;ORDERDATE&quot;, &quot;DELIVDATE&quot;, &quot;PAYDATE&quot;, &quot;ORDER_COST&quot;, &quot;CUSTID&quot;, &quot;PROMOTIONID&quot;) VALUES (?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE &quot;ORDERS&quot; SET &quot;ORDERDATE&quot; = ?, &quot;DELIVDATE&quot; = ?, &quot;PAYDATE&quot; = ?, &quot;ORDER_COST&quot; = ?, &quot;CUSTID&quot; = ?, &quot;PROMOTIONID&quot; = ? WHERE &quot;ORDERID&quot; = ?">
            <DeleteParameters>
                <asp:Parameter Name="ORDERID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ORDERID" Type="String" />
                <asp:Parameter Name="ORDERDATE" Type="DateTime" />
                <asp:Parameter Name="DELIVDATE" Type="DateTime" />
                <asp:Parameter Name="PAYDATE" Type="DateTime" />
                <asp:Parameter Name="ORDER_COST" Type="Decimal" />
                <asp:Parameter Name="CUSTID" Type="String" />
                <asp:Parameter Name="PROMOTIONID" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ORDERDATE" Type="DateTime" />
                <asp:Parameter Name="DELIVDATE" Type="DateTime" />
                <asp:Parameter Name="PAYDATE" Type="DateTime" />
                <asp:Parameter Name="ORDER_COST" Type="Decimal" />
                <asp:Parameter Name="CUSTID" Type="String" />
                <asp:Parameter Name="PROMOTIONID" Type="String" />
                <asp:Parameter Name="ORDERID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">Order specific details</asp:LinkButton>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">Premium Order(exceeding 2000$)</asp:LinkButton>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:LinkButton ID="LinkButton13" runat="server" OnClick="LinkButton13_Click">Priority Orders(order is delivered within 2 days)</asp:LinkButton>
    </p>
    <p>
    </p>
</asp:Content>
