<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SearchPatrons.aspx.vb" Inherits="admin_SearchPatron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT * FROM [Project_User]">
    </asp:SqlDataSource>
    <br />
    <h1 style="text-align: center">Patrons Search</h1>
    
    <div class="well">
    
    <br />

     <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/librarian/Admin.aspx">Back to librarian page</asp:HyperLink></li>    
    <% If Not IsPostBack Then%>
        &nbsp;Search for a patron by first name, last name, phone Or Email:
        <asp:TextBox ID="tbTool" runat="server" AutoPostBack="true" Width="128px"></asp:TextBox>
    
    <%Else%>

    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/librarian/SearchPatrons.aspx">Go back to search page</asp:HyperLink>
    <br />    
    <br />
    <br />
    <asp:gridview runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Width="884px">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
    </asp:gridview>

    <%End If%>
        </div>
</asp:Content>

