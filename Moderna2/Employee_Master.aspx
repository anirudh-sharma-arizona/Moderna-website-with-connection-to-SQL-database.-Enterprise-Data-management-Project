<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Employee_Master.aspx.cs" Inherits="Moderna2.Employee_Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        The list of all our employees:</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EMPID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="EMPID" HeaderText="EMPID" ReadOnly="True" SortExpression="EMPID" />
                <asp:BoundField DataField="WORKTYPE" HeaderText="WORKTYPE" SortExpression="WORKTYPE" />
                <asp:BoundField DataField="EMPFN" HeaderText="EMPFN" SortExpression="EMPFN" />
                <asp:BoundField DataField="EMPLN" HeaderText="EMPLN" SortExpression="EMPLN" />
                <asp:BoundField DataField="DATEOFBIRTH" HeaderText="DATEOFBIRTH" SortExpression="DATEOFBIRTH" />
                <asp:BoundField DataField="HIREDATE" HeaderText="HIREDATE" SortExpression="HIREDATE" />
                <asp:BoundField DataField="TITLE" HeaderText="TITLE" SortExpression="TITLE" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;" DeleteCommand="DELETE FROM &quot;EMPLOYEES&quot; WHERE &quot;EMPID&quot; = ?" InsertCommand="INSERT INTO &quot;EMPLOYEES&quot; (&quot;EMPID&quot;, &quot;WORKTYPE&quot;, &quot;EMPFN&quot;, &quot;EMPLN&quot;, &quot;DATEOFBIRTH&quot;, &quot;HIREDATE&quot;, &quot;TITLE&quot;) VALUES (?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE &quot;EMPLOYEES&quot; SET &quot;WORKTYPE&quot; = ?, &quot;EMPFN&quot; = ?, &quot;EMPLN&quot; = ?, &quot;DATEOFBIRTH&quot; = ?, &quot;HIREDATE&quot; = ?, &quot;TITLE&quot; = ? WHERE &quot;EMPID&quot; = ?">
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
    <p>
        &nbsp;</p>
    <p>
        <asp:LinkButton ID="LinkButton13" runat="server" OnClick="LinkButton13_Click">Insert Employees</asp:LinkButton>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">Renowned employees with publications</asp:LinkButton>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">Employees who are expert in communication</asp:LinkButton>
    </p>
<p>
        &nbsp;</p>
</asp:Content>
