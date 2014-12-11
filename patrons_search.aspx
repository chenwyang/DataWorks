<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="patrons_search.aspx.vb" Inherits="admin_SearchPatron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" DeleteCommand="DELETE FROM [project_Patrons] WHERE [PID] = @PID" InsertCommand="INSERT INTO [project_Patrons] ([FirstName], [LastName], [Street Address], [City], [State], [Zip Code], [Phone], [Email], [Materials]) VALUES (@FirstName, @LastName, @Street_Address, @City, @State, @Zip_Code, @Phone, @Email, @Materials)" SelectCommand="SELECT * FROM [project_Patrons]" UpdateCommand="UPDATE [project_Patrons] SET [FirstName] = @FirstName, [LastName] = @LastName, [Street Address] = @Street_Address, [City] = @City, [State] = @State, [Zip Code] = @Zip_Code, [Phone] = @Phone, [Email] = @Email, [Materials] = @Materials WHERE [PID] = @PID">
        <DeleteParameters>
            <asp:Parameter Name="PID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Street_Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip_Code" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Materials" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Street_Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip_Code" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Materials" Type="Int32" />
            <asp:Parameter Name="PID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <% If Not IsPostBack Then%>
        Search for a patron by first name, last name,phone number, or email address:
        <asp:TextBox ID="tbTool" runat="server" AutoPostBack="true" Width="128px"></asp:TextBox>
    
    <%Else%>

    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/SearchPatrons.aspx">Go back to search page</asp:HyperLink>
    <br />    
    <br />
    <br />
    <asp:gridview runat="server" AutoGenerateColumns="False" DataKeyNames="PID" DataSourceID="SqlDataSource1" Width="884px">
        <Columns>
            <asp:BoundField DataField="PID" HeaderText="PID" InsertVisible="False" ReadOnly="True" SortExpression="PID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Street Address" HeaderText="Street Address" SortExpression="Street Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Zip Code" HeaderText="Zip Code" SortExpression="Zip Code" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Materials" HeaderText="Materials" SortExpression="Materials" />
        </Columns>
    </asp:gridview>

    <%End If%>
</asp:Content>

