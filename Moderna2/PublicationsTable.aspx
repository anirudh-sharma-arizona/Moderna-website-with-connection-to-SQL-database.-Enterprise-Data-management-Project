<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PublicationsTable.aspx.cs" Inherits="Moderna2.WebForm11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            The Admin access all the publications and have the access to update and delete them:<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PUBLICATIONID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="PUBLICATIONID" HeaderText="PUBLICATIONID" ReadOnly="True" SortExpression="PUBLICATIONID" />
                    <asp:BoundField DataField="PUBLICATIONDATE" HeaderText="PUBLICATIONDATE" SortExpression="PUBLICATIONDATE" />
                    <asp:BoundField DataField="TECHNOLOGY" HeaderText="TECHNOLOGY" SortExpression="TECHNOLOGY" />
                    <asp:BoundField DataField="PUBDETAILS" HeaderText="PUBDETAILS" SortExpression="PUBDETAILS" />
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
        </div>
    </form>
</body>
</html>
