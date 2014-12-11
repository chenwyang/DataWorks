<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SearchMaterials.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT * FROM [project_Materials2]">
    </asp:SqlDataSource>
    <br />
    <h1 style="text-align: center">Materials Search</h1>
    <div class="well">
    <br />
    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/librarian/Admin.aspx">Back to librarian page</asp:HyperLink></li>    
    <% If Not IsPostBack Then%>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        Search for a book by author, title, ISBN, MID or description:
        <asp:TextBox ID="tbTool" runat="server" AutoPostBack="true" Width="128px"></asp:TextBox>
    <%Else%>

    
    <br />    
    <br />
    <br />
     

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="862px" AutoGenerateColumns="False" DataKeyNames="MID" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="MID" HeaderText="MID" SortExpression="MID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
            <asp:BoundField DataField="Copyright" HeaderText="Copyright" SortExpression="Copyright" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

    <%End If%>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT [Title] FROM [project_Materials2]"></asp:SqlDataSource>

        <br />
    <br />
    <br />
    Browse List of Titles:<br />

        <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="508px" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="Title">
        </asp:DropDownList>
        <br />
        </div>
</asp:Content>

