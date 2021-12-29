<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Products_Master.aspx.cs" Inherits="Moderna2.Products_Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        List of Products in the Inventory:</p>
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PRODID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="PRODID" HeaderText="PRODID" ReadOnly="True" SortExpression="PRODID" />
                <asp:BoundField DataField="PRODNAME" HeaderText="PRODNAME" SortExpression="PRODNAME" />
                <asp:BoundField DataField="INVENTORY" HeaderText="INVENTORY" SortExpression="INVENTORY" />
                <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM &quot;PRODUCTS&quot; WHERE &quot;PRODID&quot; = ?" InsertCommand="INSERT INTO &quot;PRODUCTS&quot; (&quot;PRODID&quot;, &quot;PRODNAME&quot;, &quot;INVENTORY&quot;, &quot;PRICE&quot;) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM &quot;PRODUCTS&quot;" UpdateCommand="UPDATE &quot;PRODUCTS&quot; SET &quot;PRODNAME&quot; = ?, &quot;INVENTORY&quot; = ?, &quot;PRICE&quot; = ? WHERE &quot;PRODID&quot; = ?">
            <DeleteParameters>
                <asp:Parameter Name="PRODID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PRODID" Type="String" />
                <asp:Parameter Name="PRODNAME" Type="String" />
                <asp:Parameter Name="INVENTORY" Type="Decimal" />
                <asp:Parameter Name="PRICE" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PRODNAME" Type="String" />
                <asp:Parameter Name="INVENTORY" Type="Decimal" />
                <asp:Parameter Name="PRICE" Type="Decimal" />
                <asp:Parameter Name="PRODID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">COVID related products</asp:LinkButton>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
