<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Book_Borrow.aspx.vb" Inherits="librarian_Borrow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Check Out a Book
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h1 style="text-align: center">Check Out Material</h1>
    <div class="well">
    
    Username: 
    <asp:DropDownList ID="tb_userName" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" Height="35px" Width="163px">
    </asp:DropDownList>

    <br />
    <br />

        Material Title:
    <asp:DropDownList ID="tb_materialID" runat="server" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="MID" Height="35px" Width="163px">
    </asp:DropDownList>
    
    <br />
    <br />

    <asp:Button ID="btn_Borrow" runat="server" Text="Check Out"></asp:Button>


    <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="Larger" ForeColor="Red"></asp:Label>
    <br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT * FROM [vw_aspnet_Users]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT * FROM [project_Materials2] ORDER BY [Title]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT * FROM [project_Materials2]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>

    <br />
</div>

</asp:Content>

