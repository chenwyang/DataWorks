<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Admin_ViewPatrons.aspx.vb" Inherits="admin_admin_patrons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 style="text-align: center">View All Patrons</h1>
    <div class="well">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT * FROM [Project_User]" DeleteCommand="DELETE FROM [Project_User] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [Project_User] ([UserID], [FirstName], [LastName], [Phone], [City], [State], [Email]) VALUES (@UserID, @FirstName, @LastName, @Phone, @City, @State, @Email)" UpdateCommand="UPDATE [Project_User] SET [FirstName] = @FirstName, [LastName] = @LastName, [Phone] = @Phone, [City] = @City, [State] = @State, [Email] = @Email WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserID" Type="Object" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UserID" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>


&nbsp;<li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/librarian/Admin.aspx">Back to librarian page</asp:HyperLink></li>    
    <asp:gridview runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Width="745px" AllowSorting="True" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:HyperLinkField DataNavigateUrlFields="UserID" DataNavigateUrlFormatString="PatronDetails.aspx?UserID={0}" HeaderText="Details" Text="Select" />
        </Columns>
    </asp:gridview>
</asp:Content>

