<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResearchProjects1.aspx.cs" Inherits="Moderna2.ResearchProjects1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            List of all our
            Research Projects:</div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PROJECTID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" ReadOnly="True" SortExpression="PROJECTID" />
                <asp:BoundField DataField="PHASE" HeaderText="PHASE" SortExpression="PHASE" />
                <asp:BoundField DataField="MODALITY" HeaderText="MODALITY" SortExpression="MODALITY" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;RESEARCH_PROJECTS&quot; WHERE &quot;PROJECTID&quot; = ?" InsertCommand="INSERT INTO &quot;RESEARCH_PROJECTS&quot; (&quot;PROJECTID&quot;, &quot;PHASE&quot;, &quot;MODALITY&quot;) VALUES (:PROJECTID, :PHASE, :MODALITY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;RESEARCH_PROJECTS&quot;" UpdateCommand="UPDATE &quot;RESEARCH_PROJECTS&quot; SET &quot;PHASE&quot; = :PHASE, &quot;MODALITY&quot; = :MODALITY WHERE &quot;PROJECTID&quot; = :PROJECTID">
            <DeleteParameters>
                <asp:Parameter Name="PROJECTID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PROJECTID" Type="String" />
                <asp:Parameter Name="PHASE" Type="String" />
                <asp:Parameter Name="MODALITY" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PHASE" Type="String" />
                <asp:Parameter Name="MODALITY" Type="String" />
                <asp:Parameter Name="PROJECTID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        The Reseach Projects that are in Phase 2 of the development:<br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">List of Phase 2 Projects</asp:LinkButton>
        <br />
    </form>
</body>
</html>
