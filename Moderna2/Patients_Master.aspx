<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Patients_Master.aspx.cs" Inherits="Moderna2.Patients_Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        List of Patients involved in our research:</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM &quot;PATIENTS&quot;" DeleteCommand="DELETE FROM &quot;PATIENTS&quot; WHERE &quot;PATIENTID&quot; = ?" InsertCommand="INSERT INTO &quot;PATIENTS&quot; (&quot;PATIENTID&quot;, &quot;PATIENTFN&quot;, &quot;PATIENTLN&quot;, &quot;DOB&quot;, &quot;RESEARCHPROJECTID&quot;) VALUES (?, ?, ?, ?, ?)" UpdateCommand="UPDATE &quot;PATIENTS&quot; SET &quot;PATIENTFN&quot; = ?, &quot;PATIENTLN&quot; = ?, &quot;DOB&quot; = ?, &quot;RESEARCHPROJECTID&quot; = ? WHERE &quot;PATIENTID&quot; = ?">
            <DeleteParameters>
                <asp:Parameter Name="PATIENTID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PATIENTID" Type="String" />
                <asp:Parameter Name="PATIENTFN" Type="String" />
                <asp:Parameter Name="PATIENTLN" Type="String" />
                <asp:Parameter Name="DOB" Type="String" />
                <asp:Parameter Name="RESEARCHPROJECTID" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PATIENTFN" Type="String" />
                <asp:Parameter Name="PATIENTLN" Type="String" />
                <asp:Parameter Name="DOB" Type="String" />
                <asp:Parameter Name="RESEARCHPROJECTID" Type="String" />
                <asp:Parameter Name="PATIENTID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PATIENTID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="PATIENTID" HeaderText="PATIENTID" ReadOnly="True" SortExpression="PATIENTID" />
                <asp:BoundField DataField="PATIENTFN" HeaderText="PATIENTFN" SortExpression="PATIENTFN" />
                <asp:BoundField DataField="PATIENTLN" HeaderText="PATIENTLN" SortExpression="PATIENTLN" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="RESEARCHPROJECTID" HeaderText="RESEARCHPROJECTID" SortExpression="RESEARCHPROJECTID" />
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
    </p>
    <p>
&nbsp;<asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">Patients with COVID</asp:LinkButton>
    </p>
    <p>
        &nbsp;</p>
    <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">Add New Patients</asp:LinkButton>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>
