<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MaterialsDueToday.aspx.vb" Inherits="librarian_MaterialsDueToday" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Materials Due Today or Later
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align: center">&nbsp;Materials Due Today</h1>
    <div class="well">
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


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BID" DataSourceID="SqlDataSource1" Width="610px">
        <Columns>
            <asp:BoundField DataField="BID" HeaderText="BID" InsertVisible="False" ReadOnly="True" SortExpression="BID" />
            <asp:BoundField DataField="PID" HeaderText="PID" SortExpression="PID" />
            <asp:BoundField DataField="MID" HeaderText="MID" SortExpression="MID" />
            <asp:BoundField DataField="RentDate" HeaderText="RentDate" SortExpression="RentDate" />
            <asp:BoundField DataField="DateDueBack" HeaderText="DateDueBack" SortExpression="DateDueBack" />
        </Columns>
    </asp:GridView>
        </div>

</asp:Content>

