<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="NewMaterial.aspx.vb" Inherits="librarian_NewMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Add a New Material  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
    <h1 style="text-align: center">Add New Material</h1>
    <div class="well">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
          
        </EditItemTemplate>
        <InsertItemTemplate>
            <table>
                     
                        <tr>
                            <td id="title"; style="text-align:right;">
                               *Title:
                            </td>
                            <td id="content";style="text-align:left;">
                                 <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                            </td>
                            <td style="text-align:left;">
                                 <asp:RequiredFieldValidator ID="rfv_Title" runat="server" ErrorMessage="Please enter a material title." ControlToValidate="TitleTextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                        <tr>
                            <td id="title"; style="text-align:right;">
                                *Author:
                            </td>
                            <td id="content";style="text-align:left;">
                                <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                            </td>
                            <td style="text-align:left;">
                               <asp:RequiredFieldValidator ID="rfv_author" runat="server" ErrorMessage="Please enter the author for the material." ControlToValidate="AuthorTextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                        <tr>
                            <td id="title"; style="text-align:right;">
                                 Publisher:
                            </td>
                            <td id="content";style="text-align:left;">
                                <asp:TextBox ID="PublisherTextBox" runat="server" Text='<%# Bind("Publisher") %>' />
                            </td>
                             <td style="text-align:left;">
                         
                            </td>
                        </tr>

                        <tr>
                            <td id="title"; style="text-align:right;">
                                Copyright:
                            </td>
                            <td id="content";style="text-align:left;">
                                 <asp:TextBox ID="CopyrightTextBox" runat="server" Text='<%# Bind("Copyright") %>' />
                            </td>
                            <td>

                            </td>
                        </tr>

                        <tr>
                            <td id="title"; style="text-align:right;">
                                 *ISBN(10 digits):
                            </td>
                            <td id="content";style="text-align:left;">
                                <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfv_ISBN" runat="server" ErrorMessage="Please enter the ISBN." ControlToValidate="ISBNTextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td id="title"; style="text-align:right;">
                               Description:
                            </td>
                            <td id="content";style="text-align:left;">
                                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                            </td>
                            <td>

                            </td>
                        </tr>

                        <tr>
                            <td id="title"; style="text-align:right;">
                                *Availability:
                            </td>
                            <td id="content";style="text-align:left;">
                                <asp:TextBox ID="AvailabilityTextBox" runat="server" Text='<%# Bind("Availability") %>' />
                            </td>
                            <td>
                                   <asp:RequiredFieldValidator ID="rfv_Availability" runat="server" ErrorMessage="Please indicate the availability of the material." ControlToValidate="AvailabilityTextBox"></asp:RequiredFieldValidator>
                              </td>
                        </tr>

                        <tr>
                            <td id="title"; style="text-align:right;">
                                Type:
                            </td>
                            <td id="content";style="text-align:left;">
                                <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
                            </td>
                             <td style="text-align:left;">
                            </td>
                        </tr>

                        <tr>
                            <td id="title"; style="text-align:right;">
                                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" /> 
                            </td>
                            <td id="content";style="text-align:left;">
                                <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </td>
                        </tr>
                 
                </table>
          
  

        </InsertItemTemplate>
        <ItemTemplate>
            
        </ItemTemplate>
    </asp:FormView>
        </div>
</asp:Content>

