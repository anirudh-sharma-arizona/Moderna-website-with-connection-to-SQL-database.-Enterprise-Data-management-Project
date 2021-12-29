<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Insert_Publications.aspx.cs" Inherits="Moderna2.Insert_Publications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="PUBLICATIONID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="PUBLICATIONID" HeaderText="PUBLICATIONID" ReadOnly="True" SortExpression="PUBLICATIONID" />
            <asp:BoundField DataField="PUBLICATIONDATE" HeaderText="PUBLICATIONDATE" SortExpression="PUBLICATIONDATE" />
            <asp:BoundField DataField="TECHNOLOGY" HeaderText="TECHNOLOGY" SortExpression="TECHNOLOGY" />
            <asp:BoundField DataField="PUBDETAILS" HeaderText="PUBDETAILS" SortExpression="PUBDETAILS" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM &quot;PUBLICATIONS&quot; WHERE &quot;PUBLICATIONID&quot; = ?" InsertCommand="INSERT INTO &quot;PUBLICATIONS&quot; (&quot;PUBLICATIONID&quot;, &quot;PUBLICATIONDATE&quot;, &quot;TECHNOLOGY&quot;, &quot;PUBDETAILS&quot;) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM &quot;PUBLICATIONS&quot;" UpdateCommand="UPDATE &quot;PUBLICATIONS&quot; SET &quot;PUBLICATIONDATE&quot; = ?, &quot;TECHNOLOGY&quot; = ?, &quot;PUBDETAILS&quot; = ? WHERE &quot;PUBLICATIONID&quot; = ?">
        <DeleteParameters>
            <asp:Parameter Name="PUBLICATIONID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PUBLICATIONID" Type="String" />
            <asp:Parameter Name="PUBLICATIONDATE" Type="DateTime" />
            <asp:Parameter Name="TECHNOLOGY" Type="String" />
            <asp:Parameter Name="PUBDETAILS" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PUBLICATIONDATE" Type="DateTime" />
            <asp:Parameter Name="TECHNOLOGY" Type="String" />
            <asp:Parameter Name="PUBDETAILS" Type="String" />
            <asp:Parameter Name="PUBLICATIONID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
