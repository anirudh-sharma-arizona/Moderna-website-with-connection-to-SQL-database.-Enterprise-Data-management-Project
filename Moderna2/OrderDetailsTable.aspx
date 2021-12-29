<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="OrderDetailsTable.aspx.cs" Inherits="Moderna2.OrderDetailsTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        This page shows the order specific details(customer data):</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ORDERID,PRODID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ORDERID" HeaderText="ORDERID" ReadOnly="True" SortExpression="ORDERID" />
                <asp:BoundField DataField="PRODID" HeaderText="PRODID" ReadOnly="True" SortExpression="PRODID" />
                <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" SortExpression="QUANTITY" />
                <asp:BoundField DataField="UNITPRICE" HeaderText="UNITPRICE" SortExpression="UNITPRICE" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM &quot;ORDER_DETAILS&quot; WHERE &quot;ORDERID&quot; = ? AND &quot;PRODID&quot; = ?" InsertCommand="INSERT INTO &quot;ORDER_DETAILS&quot; (&quot;ORDERID&quot;, &quot;PRODID&quot;, &quot;QUANTITY&quot;, &quot;UNITPRICE&quot;) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM &quot;ORDER_DETAILS&quot;" UpdateCommand="UPDATE &quot;ORDER_DETAILS&quot; SET &quot;QUANTITY&quot; = ?, &quot;UNITPRICE&quot; = ? WHERE &quot;ORDERID&quot; = ? AND &quot;PRODID&quot; = ?">
            <DeleteParameters>
                <asp:Parameter Name="ORDERID" Type="String" />
                <asp:Parameter Name="PRODID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ORDERID" Type="String" />
                <asp:Parameter Name="PRODID" Type="String" />
                <asp:Parameter Name="QUANTITY" Type="Decimal" />
                <asp:Parameter Name="UNITPRICE" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="QUANTITY" Type="Decimal" />
                <asp:Parameter Name="UNITPRICE" Type="Decimal" />
                <asp:Parameter Name="ORDERID" Type="String" />
                <asp:Parameter Name="PRODID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
