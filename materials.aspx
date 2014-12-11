<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="materials.aspx.vb" Inherits="materials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h1 class="caption" style="text-align: center">Materials List</h1>
    <div class="well">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" DeleteCommand="DELETE FROM [project_Materials2] WHERE [MID] = @MID" InsertCommand="INSERT INTO [project_Materials2] ([Title], [Author], [Publisher], [Copyright], [ISBN], [Description], [Availability], [Patron]) VALUES (@Title, @Author, @Publisher, @Copyright, @ISBN, @Description, @Availability, @Patron)" SelectCommand="SELECT * FROM [project_Materials2]" UpdateCommand="UPDATE [project_Materials2] SET [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Copyright] = @Copyright, [ISBN] = @ISBN, [Description] = @Description, [Availability] = @Availability, [Patron] = @Patron WHERE [MID] = @MID">
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
            <asp:Parameter Name="Patron" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Copyright" Type="Int32" />
            <asp:Parameter Name="ISBN" Type="Int64" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Availability" Type="String" />
            <asp:Parameter Name="Patron" Type="Int32" />
            <asp:Parameter Name="MID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MID" DataSourceID="SqlDataSource1" AllowSorting="True" Width="710px" CellPadding="4" CellSpacing="6" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="MID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="MID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
            <asp:HyperLinkField DataNavigateUrlFields="MID" HeaderText="Details" Text="Select" DataNavigateUrlFormatString="Details.aspx?MID={0}" />
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
        </div>

</asp:Content>

