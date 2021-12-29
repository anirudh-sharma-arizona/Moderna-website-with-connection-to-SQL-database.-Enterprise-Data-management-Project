<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Insert_Employees.aspx.cs" Inherits="Moderna2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        Insert New Employees:</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="EMPID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="58px" Width="425px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="EMPID" HeaderText="EMPID" ReadOnly="True" SortExpression="EMPID" />
                <asp:BoundField DataField="WORKTYPE" HeaderText="WORKTYPE" SortExpression="WORKTYPE" />
                <asp:BoundField DataField="EMPFN" HeaderText="EMPFN" SortExpression="EMPFN" />
                <asp:BoundField DataField="EMPLN" HeaderText="EMPLN" SortExpression="EMPLN" />
                <asp:BoundField DataField="DATEOFBIRTH" HeaderText="DATEOFBIRTH" SortExpression="DATEOFBIRTH" />
                <asp:BoundField DataField="HIREDATE" HeaderText="HIREDATE" SortExpression="HIREDATE" />
                <asp:BoundField DataField="TITLE" HeaderText="TITLE" SortExpression="TITLE" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM &quot;EMPLOYEES&quot; WHERE &quot;EMPID&quot; = ?" InsertCommand="INSERT INTO &quot;EMPLOYEES&quot; (&quot;EMPID&quot;, &quot;WORKTYPE&quot;, &quot;EMPFN&quot;, &quot;EMPLN&quot;, &quot;DATEOFBIRTH&quot;, &quot;HIREDATE&quot;, &quot;TITLE&quot;) VALUES (?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;" UpdateCommand="UPDATE &quot;EMPLOYEES&quot; SET &quot;WORKTYPE&quot; = ?, &quot;EMPFN&quot; = ?, &quot;EMPLN&quot; = ?, &quot;DATEOFBIRTH&quot; = ?, &quot;HIREDATE&quot; = ?, &quot;TITLE&quot; = ? WHERE &quot;EMPID&quot; = ?">
            <DeleteParameters>
                <asp:Parameter Name="EMPID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EMPID" Type="String" />
                <asp:Parameter Name="WORKTYPE" Type="String" />
                <asp:Parameter Name="EMPFN" Type="String" />
                <asp:Parameter Name="EMPLN" Type="String" />
                <asp:Parameter Name="DATEOFBIRTH" Type="DateTime" />
                <asp:Parameter Name="HIREDATE" Type="DateTime" />
                <asp:Parameter Name="TITLE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="WORKTYPE" Type="String" />
                <asp:Parameter Name="EMPFN" Type="String" />
                <asp:Parameter Name="EMPLN" Type="String" />
                <asp:Parameter Name="DATEOFBIRTH" Type="DateTime" />
                <asp:Parameter Name="HIREDATE" Type="DateTime" />
                <asp:Parameter Name="TITLE" Type="String" />
                <asp:Parameter Name="EMPID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
