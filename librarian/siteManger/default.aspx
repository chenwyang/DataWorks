<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="librarian_siteManger_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Home 
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
            <div style="clear:both;"></div>
        <div class="homeDiv">
       
           <p>To work around the jQuery error, put this immediately inside of the &lt;configuration&gt; tag in the root web.config file:</p>

            <asp:Image ID="Image1" runat="server" ImageUrl="~librarian/siteManger/graphics/jquery_error.PNG" /><br /><br />

            <p>Enable role based security inside of the &lt;system.web&gt; tag:</p>

             <asp:Image ID="Image2" runat="server" ImageUrl="~librarian/siteManger/graphics/enable_role_manager.PNG" /><br /><br />

            <p>Configure your connection string outside of the &lt;system.web&gt; tag:</p>

             <asp:Image ID="Image3" runat="server" ImageUrl="~librarian/siteManger/graphics/connection_string.PNG" /><br /><br />

            

        </div>
</asp:Content>

