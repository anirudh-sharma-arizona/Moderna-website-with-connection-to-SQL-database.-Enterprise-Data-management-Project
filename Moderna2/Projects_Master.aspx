<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Projects_Master.aspx.cs" Inherits="Moderna2.Projects_Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">Research Projects</asp:LinkButton>
    : On-going researches in the fields of medicine and vaccines.<br />
    <br />
    <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">Business Projects</asp:LinkButton>
    : Revenue generating Projects<br />
    <br />
    <br />
</asp:Content>
