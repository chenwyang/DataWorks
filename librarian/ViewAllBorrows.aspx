<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewAllBorrows.aspx.vb" Inherits="librarian_ViewAllBorrows" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    View All Borrows
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    View All Borrowers<br />
    <div class="well">
    
    <a href="Book_Borrow.aspx"> Return to Checkout Page</a>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" DeleteCommand="DELETE FROM [project_Borrow] WHERE [BID] = @BID" InsertCommand="INSERT INTO [project_Borrow] ([PID], [MID], [RentDate], [DateDueBack]) VALUES (@PID, @MID, @RentDate, @DateDueBack)" SelectCommand="SELECT * FROM [project_Borrow]" UpdateCommand="UPDATE [project_Borrow] SET [PID] = @PID, [MID] = @MID, [RentDate] = @RentDate, [DateDueBack] = @DateDueBack WHERE [BID] = @BID">
        <DeleteParameters>
            <asp:Parameter Name="BID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PID" Type="Object" />
            <asp:Parameter Name="MID" Type="Int32" />
            <asp:Parameter Name="RentDate" Type="DateTime" />
            <asp:Parameter Name="DateDueBack" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PID" Type="Object" />
            <asp:Parameter Name="MID" Type="Int32" />
            <asp:Parameter Name="RentDate" Type="DateTime" />
            <asp:Parameter Name="DateDueBack" Type="DateTime" />
            <asp:Parameter Name="BID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:gridview runat="server" AutoGenerateColumns="False" DataKeyNames="BID" DataSourceID="SqlDataSource1" Width="581px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="BID" HeaderText="BID" InsertVisible="False" ReadOnly="True" SortExpression="BID" />
            <asp:BoundField DataField="PID" HeaderText="PID" SortExpression="PID" />
            <asp:BoundField DataField="MID" HeaderText="MID" SortExpression="MID" />
            <asp:BoundField DataField="RentDate" HeaderText="RentDate" SortExpression="RentDate" />
            <asp:BoundField DataField="DateDueBack" HeaderText="DateDueBack" SortExpression="DateDueBack" />
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
    </asp:gridview></div>
</asp:Content>

