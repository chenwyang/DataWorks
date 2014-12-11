<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Admin.aspx.vb" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align: center">Librarian Administration Page</h1>
<p>&nbsp;</p>
    <ul class="nav navbar-inner">
       
       
         <li><asp:HyperLink ID="Admin_Materials" runat="server" NavigateUrl="~/librarian/Admin_Materials.aspx">View Materials</asp:HyperLink></li>  
           
         <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/librarian/SearchMaterials.aspx">Search Materials</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/librarian/Book_Borrow.aspx">Borrow (Check-Out)</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/librarian/Book_Return.aspx">Return (Check-In)</asp:HyperLink></li>
     <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/librarian/MaterialsDueToday.aspx">Materials Due Today or Later</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/librarian/MaterialsPastDue.aspx">Materials Past Due</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/librarian/NewMaterial.aspx">Add a New Material</asp:HyperLink></li>

        
</ul>
    <hr />
    <ul class="nav navbar-inner">
          


        <li><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/librarian/AddNewPatron.aspx">Add New Patron</asp:HyperLink></li>
        <li><asp:HyperLink ID="Admin_New" runat="server" NavigateUrl="~/librarian/Admin_ViewPatrons.aspx">View Patrons</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/librarian/SearchPatrons.aspx">Search Patrons</asp:HyperLink></li>
         



        </ul>
    <hr />
    <ul class="nav navbar-inner">
            <li><asp:HyperLink ID="Project" runat="server" NavigateUrl="https://instruct.biz.uiowa.edu/courses/MSCI3300/Group_8/Part%202/">Project</asp:HyperLink></li>
         
            
    </ul>


</asp:Content>

