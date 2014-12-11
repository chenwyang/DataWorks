<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="roles.aspx.vb" Inherits="librarian_siteManger_roles" %>

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

       
        <asp:GridView runat="server" ID="gv_userRoles" AutoGenerateColumns="false" 
            CssClass="cssGridView" AlternatingRowStyle-CssClass="odd" GridLines="none" >
	<Columns>
		<asp:TemplateField>
			<HeaderTemplate>Role Name</HeaderTemplate>
			<ItemTemplate>
				<%# Eval("Role Name") %>
			</ItemTemplate>
		</asp:TemplateField>
		<asp:TemplateField>
			<HeaderTemplate>User Count</HeaderTemplate>
			<ItemTemplate>
				<%# Eval("User Count") %>
			</ItemTemplate>
		</asp:TemplateField>
		<asp:TemplateField>
			<HeaderTemplate>Delete Role</HeaderTemplate>
			<ItemTemplate>
				<asp:Button ID="Button1" runat="server" OnCommand="DeleteRole" CommandName="DeleteRole" CommandArgument='<%# Eval("Role Name") %>' Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this role?')" />
            </ItemTemplate>
		</asp:TemplateField>
	</Columns>
</asp:GridView>


        <br />
        <asp:Label ID="lbl_roleMgr" runat="server" Text=""></asp:Label>
        <br />

        <div class="roleDiv">
        <asp:TextBox ID="tb_newRole" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btn_newRole" runat="server" Text="Add A New Role" />
        </div>
</asp:Content>

