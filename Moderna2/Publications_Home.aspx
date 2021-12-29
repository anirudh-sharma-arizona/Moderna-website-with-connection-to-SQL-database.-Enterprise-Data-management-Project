<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Publications_Home.aspx.cs" Inherits="Moderna2.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    This web page contains all the details about all our publications segregated with latest ones.<br />
    <br />
    <asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">All Publications</asp:LinkButton>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton13" runat="server" OnClick="LinkButton13_Click">Number of publications made by our employees after the year 2020(onset of COVID):</asp:LinkButton>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">Top Research Employees in Publications(post 2020)</asp:LinkButton>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton14" runat="server" OnClick="LinkButton14_Click">Add New Publications</asp:LinkButton>
    <br />
    <br />
</asp:Content>
