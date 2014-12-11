<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Materials.aspx.vb" Inherits="materials" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align: center">Materials</h1>
    <div class="well">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" DeleteCommand="DELETE FROM [project_Materials2] WHERE [MID] = @MID" InsertCommand="INSERT INTO [project_Materials2] ([Title], [Author], [Publisher], [Copyright], [ISBN], [Description], [Availability], [Type]) VALUES (@Title, @Author, @Publisher, @Copyright, @ISBN, @Description, @Availability, @Type)" SelectCommand="SELECT * FROM [project_Materials2]" UpdateCommand="UPDATE [project_Materials2] SET [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Copyright] = @Copyright, [ISBN] = @ISBN, [Description] = @Description, [Availability] = @Availability, [Type] = @Type WHERE [MID] = @MID">
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

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT COUNT(MID)
FROM project_Materials2
"></asp:SqlDataSource>
        <br />

     <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/librarian/Admin.aspx">Back to librarian page</asp:HyperLink></li>    

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MID" DataSourceID="SqlDataSource1" Width="788px" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="MID" HeaderText="MID" InsertVisible="False" ReadOnly="True" SortExpression="MID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
            <asp:HyperLinkField DataNavigateUrlFields="MID" DataNavigateUrlFormatString="Admin_Details.aspx?MID={0}" Text="Select" HeaderText="Details" />
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
        
    <h2>Material Count: </h2>
         <p>
             <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
                 <ItemTemplate>
                     &nbsp;<asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
                     <br />
<br />
                 </ItemTemplate>
             </asp:DataList>
         </p>
    
    
    </div>

    <p>
        &nbsp;</p>

</asp:Content>

