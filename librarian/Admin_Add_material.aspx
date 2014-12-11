<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Add_material.aspx.vb" Inherits="librarian_Admin_Add_material" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" DeleteCommand="DELETE FROM [project_Materials2] WHERE [MID] = @MID" InsertCommand="INSERT INTO [project_Materials2] ([Title], [Author], [Publisher], [Copyright], [ISBN], [Description], [Availability], [Type]) VALUES (@Title, @Author, @Publisher, @Copyright, @ISBN, @Description, @Availability, @Type)" SelectCommand="SELECT [MID], [Title], [Author], [Publisher], [Copyright], [ISBN], [Description], [Availability], [Type] FROM [project_Materials2]" UpdateCommand="UPDATE [project_Materials2] SET [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Copyright] = @Copyright, [ISBN] = @ISBN, [Description] = @Description, [Availability] = @Availability, [Type] = @Type WHERE [MID] = @MID">
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

    <h1 style="text-align: center">Add New Materials</h1>
    <div class="well">
    <br/>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
           </EditItemTemplate>
        <InsertItemTemplate>


            <table class="table table-bordered">
			            
			<tr>
				<td align="right"> Title </td><td align="left"><asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' /></td>
			</tr>
            
			<tr>
				<td align="right"> Author: </td><td align="left"><asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' /></td>
			</tr>
            
            <tr>
				<td align="right"> Publisher: </td><td align="left"><asp:TextBox ID="PublisherTextBox" runat="server" Text='<%# Bind("Publisher") %>' /></td>
			</tr>
            
            <tr>
				<td align="right"> Copyright: </td><td align="left"><asp:TextBox ID="CopyrightTextBox" runat="server" Text='<%# Bind("Copyright") %>' /></td>
			</tr>
            
            <tr>
				<td align="right"> ISBN: </td><td align="left"><asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' /></td>
			</tr>
            
            <tr>
				<td align="right"> Description: </td><td align="left"><asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' /></td>
			</tr>

           <tr>
				<td align="right"> Availability: </td><td align="left"><asp:TextBox ID="AvailabilityTextBox" runat="server" Text='<%# Bind("Availability") %>' /></td>
			</tr>

            
             <tr>
				<td align="right"> TypeTextBox: </td><td align="left"><asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' /></td>
			</tr>

		  </table>

            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
        </ItemTemplate>
    </asp:FormView>
    <asp:Label ID="Label3" runat="server" Text="."></asp:Label>
    <br/>
    <br/>
        </div>


</asp:Content>

