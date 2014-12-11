<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="users.aspx.vb" Inherits="librarian_siteManger_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<ul id="nav">
            <li class="currentPage">
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/librarian/Admin.aspx">Back to librarian page</asp:HyperLink></li>
	        <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/librarian/siteManger/roles.aspx">Role Manager</asp:HyperLink></li>
	        <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/librarian/siteManger/edit_user.aspx">View & Edit Users</asp:HyperLink></li>
	        <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/librarian/siteManger/add_user.aspx">Add New User</asp:HyperLink></li>
	        <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/librarian/siteManger/users_by_role.aspx">View Users By Role</asp:HyperLink></li>
        </ul>

        <h2>View and Edit Users</h2>
<asp:GridView runat="server" ID="Users" AutoGenerateColumns="false" CssClass="cssGridView" AlternatingRowStyle-CssClass="odd" GridLines="none" >
<Columns>
	<asp:TemplateField>
		<HeaderTemplate>User Name</HeaderTemplate>
		<ItemTemplate>
		<a href="edit_user.aspx?username=<%# Eval("UserName") %>"><%# Eval("UserName") %></a>
		</ItemTemplate>
	</asp:TemplateField>
	<asp:BoundField DataField="email" HeaderText="Email" />
	<asp:BoundField DataField="comment" HeaderText="Comments" />
	<asp:BoundField DataField="creationdate" HeaderText="Creation Date" />
	<asp:BoundField DataField="lastlogindate" HeaderText="Last Login Date" />
	<asp:BoundField DataField="lastactivitydate" HeaderText="Last Activity Date" />
	<asp:BoundField DataField="isapproved" HeaderText="Is Active" />
	<asp:BoundField DataField="isonline" HeaderText="Is Online" />
	<asp:BoundField DataField="islockedout" HeaderText="Is Locked Out" />
</Columns>
</asp:GridView>


</asp:Content>


