<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Insert_Patients.aspx.cs" Inherits="Moderna2.Insert_Patients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PATIENTID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="PATIENTID" HeaderText="PATIENTID" ReadOnly="True" SortExpression="PATIENTID" />
                <asp:BoundField DataField="PATIENTFN" HeaderText="PATIENTFN" SortExpression="PATIENTFN" />
                <asp:BoundField DataField="PATIENTLN" HeaderText="PATIENTLN" SortExpression="PATIENTLN" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="RESEARCHPROJECTID" HeaderText="RESEARCHPROJECTID" SortExpression="RESEARCHPROJECTID" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM &quot;PATIENTS&quot; WHERE &quot;PATIENTID&quot; = ?" InsertCommand="INSERT INTO &quot;PATIENTS&quot; (&quot;PATIENTID&quot;, &quot;PATIENTFN&quot;, &quot;PATIENTLN&quot;, &quot;DOB&quot;, &quot;RESEARCHPROJECTID&quot;) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM &quot;PATIENTS&quot;" UpdateCommand="UPDATE &quot;PATIENTS&quot; SET &quot;PATIENTFN&quot; = ?, &quot;PATIENTLN&quot; = ?, &quot;DOB&quot; = ?, &quot;RESEARCHPROJECTID&quot; = ? WHERE &quot;PATIENTID&quot; = ?">
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
    </p>
</asp:Content>
