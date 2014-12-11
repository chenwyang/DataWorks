<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <br />
    <h1 style="text-align: center">Materials Search</h1>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT * FROM [project_Materials2]" DeleteCommand="DELETE FROM [project_Materials2] WHERE [MID] = @MID" InsertCommand="INSERT INTO [project_Materials2] ([Title], [Author], [Publisher], [Copyright], [ISBN], [Description], [Availability], [Type]) VALUES (@Title, @Author, @Publisher, @Copyright, @ISBN, @Description, @Availability, @Type)" UpdateCommand="UPDATE [project_Materials2] SET [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Copyright] = @Copyright, [ISBN] = @ISBN, [Description] = @Description, [Availability] = @Availability, [Type] = @Type WHERE [MID] = @MID">
        <DeleteParameters>
            <asp:Parameter Name="MID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Copyright" Type="Int32" />
            <asp:Parameter Name="ISBN" Type="Int64" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Availability" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Copyright" Type="Int32" />
            <asp:Parameter Name="ISBN" Type="Int64" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Availability" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="MID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <div class="well">
    <% If Not IsPostBack Then%>
        Search for a book by author, title, or description:
        <asp:TextBox ID="tbTool" runat="server" AutoPostBack="true" Width="128px"></asp:TextBox>
    <%Else%>

    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/search.aspx">Go back to search page</asp:HyperLink>
    <br />    
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="862px" AutoGenerateColumns="False" DataKeyNames="MID" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MID" HeaderText="MID" SortExpression="MID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
            <asp:BoundField DataField="Copyright" HeaderText="Copyright" SortExpression="Copyright" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
            <asp:HyperLinkField DataNavigateUrlFields="MID" DataNavigateUrlFormatString="Details.aspx?MID={0}" Text="Select" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>


    <%End If%>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT [Title] FROM [project_Materials2]"></asp:SqlDataSource>

        <br />
        <br />
        <br />
        <br />
        
        Browse Titles:<br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="326px" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="Title">
        </asp:DropDownList>
        </div>
    <br />
</asp:Content>

