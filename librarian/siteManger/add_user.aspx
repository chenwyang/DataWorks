<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="add_user.aspx.vb" Inherits="librarian_siteManger_add_user" %>

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
        <div style="clear:both;"><h2>Add A New User</h2></div>
        <div class="roleDiv">
        <h3>Choose Role(s):</h3>
        <asp:CheckBoxList ID="cbList_userRoles" runat="server"></asp:CheckBoxList>
        </div>
       
        <div class="roleDiv">
             <h3>User Info:</h3>

        <table>
            
            <tr>
	            <td class="detailheader">* User Name:</td>
	            <td class="detailuser">
		            <asp:TextBox ID="tb_username" runat="server"></asp:TextBox>
	            </td>
            </tr>

            <tr>
	            <td class="detailheader">* Password:</td>
	            <td class="detailuser">
		            <asp:TextBox ID="tb_password" runat="server"></asp:TextBox>
	            </td>
            </tr>

            <tr>
	            <td class="detailheader">* Email:</td>
	            <td class="detailuser">
		            <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
	            </td>
            </tr>
            <tr>
	            <td class="detailheader">* Password Reset Question:</td>
	            <td class="detailuser">
		            <asp:DropDownList ID="ddl_pwdQuestion" runat="server">
                           <asp:ListItem Value="-1">Select Question</asp:ListItem>
                           <asp:ListItem>What is your favorite color?</asp:ListItem>
                           <asp:ListItem>What is your favorite tree?</asp:ListItem>
                           <asp:ListItem>Are you happy today?</asp:ListItem>
                    </asp:DropDownList>
	            </td>
            </tr>

            <tr>
	            <td class="detailheader">* Password Reset Answer:</td>
	            <td class="detailuser">
		            <asp:TextBox ID="tb_answer" runat="server"></asp:TextBox>
	            </td>
            </tr>
            
            <tr>
	            <td class="detailheader">Comment:</td>
	            <td class="detailuser">
		            <asp:TextBox ID="tb_comment" runat="server"></asp:TextBox>
	            </td>
            </tr>

            <tr>
                <td class="detailheader">&nbsp;</td>
	            <td class="detailuser"><br /><asp:Button ID="btn_newUser" runat="server" Text="Create New User" /> &nbsp; <input type="reset" /></td>
             </tr>

            <tr>
	            <td colspan="2">
                    <asp:Label ID="lbl_addUser" runat="server" Text=""></asp:Label>
	            </td>
            </tr>
        
        </table>


            
            

        </div>
</asp:Content>

