<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Book_Return.aspx.vb" Inherits="librarian_Book_Return" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Return a Book
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <h1 style="text-align: center">Check In Material </h1>
    
     <div class="well">
    Material ID to be returned: 
    <asp:DropDownList ID="tb_ToolID" runat="server" DataSourceID="SqlDataSource1" DataTextField="MID" DataValueField="MID" Height="35px">
    </asp:DropDownList>
    
    <br /><br />
    <asp:Button ID="btn_Return" runat="server" Text="Return Book"></asp:Button>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT [MID] FROM [project_Borrow]"></asp:SqlDataSource>
    <br />
        </div>
</asp:Content>
