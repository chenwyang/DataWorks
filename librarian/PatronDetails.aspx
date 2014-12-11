<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="PatronDetails.aspx.vb" Inherits="admin_PatronDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align: center">Patron Details</h1>
    <div class="well">
    &nbsp;<li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/librarian/Admin.aspx">Back to librarian page</asp:HyperLink></li>
    <li>
        <asp:label runat="server" ID="lbl_deletePatron" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF3300"></asp:label>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="UserID" Height="176px" Width="259px">
            <EditItemTemplate>
           <table class="table table-bordered">
			<tr>
				<td id="title"; style="text-align:right">  
                    *UserID:
				</td>
                <td id="content"; style="text-align:left">
                    <asp:TextBox ID="UserIDTextbox" runat="server" Text='<%# Eval("UserID") %>' />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfv_UID" runat="server" ErrorMessage="Please enter a user ID." ControlToValidate="UserIDTextbox"></asp:RequiredFieldValidator>
                </td>
			</tr>
            
             <tr>
				<td id="title"; style="text-align:right">  
                     *UserName:
				</td>
                <td id="content"; style="text-align:left">
                    <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                </td>
                 <td>
                    <asp:RequiredFieldValidator ID="rfv_UserName" runat="server" ErrorMessage="Please enter a username." ControlToValidate="UserNameTextBox"></asp:RequiredFieldValidator>

                </td>
			</tr>
			
            <tr>
				<td id="title"; style="text-align:right">  
                    *FirstName:
				</td>
                <td id="content"; style="text-align:left">
                    <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfv_fname" runat="server" ErrorMessage="Please enter a first name." ControlToValidate="FirstNameTextBox"></asp:RequiredFieldValidator>
                </td>
			</tr>
			
              <tr>
				<td id="title"; style="text-align:right">  
                  *LastName:
				</td>
                <td id="content"; style="text-align:left">
                   <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                </td>
                 <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a last name." ControlToValidate="LastNameTextBox"></asp:RequiredFieldValidator>
                 </td>
			</tr>
		
              <tr>
				<td id="title"; style="text-align:right">  
                   City:
				</td>
                <td id="content"; style="text-align:left">
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                </td>
                 <td>

                 </td>
			</tr>
        
            <tr>
				<td id="title"; style="text-align:right">  
                  *State:
				</td>
                <td id="content"; style="text-align:left">
                   <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfv_state" runat="server" ErrorMessage="Please enter a state." ControlToValidate="StateTextBox"></asp:RequiredFieldValidator>
                </td>
			</tr>
            
            <tr>
				<td id="title"; style="text-align:right">  
                  Phone:
				</td>
                <td id="content"; style="text-align:left">
                   <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                </td>
                 <td>

                 </td>
			</tr>

             <tr>
				<td id="title"; style="text-align:right">  
                   Email:
				</td>
                <td id="content"; style="text-align:left">
                   <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                </td>
                 <td>
                </td>
			</tr>

            <tr>
                 <td style="text-align:right;">
                       <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                  </td>
                  <td style="text-align:left;">
                        <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                  </td>
                    <td>
                 </td>
            </tr>
            
		</table>
 
            </EditItemTemplate>
            <InsertItemTemplate>
        
            </InsertItemTemplate>
            <ItemTemplate>

            <table class="table table-bordered">
			<tr>
				<td id="title"; style="text-align:right">  
                    UserID:
				</td>
                <td id="content"; style="text-align:left">
                   <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
                </td>
			</tr>
            
             <tr>
				<td id="title"; style="text-align:right">  
                     UserName:
				</td>
                <td id="content"; style="text-align:left">
                    <asp:Label ID="UserNameLabel1" runat="server" Text='<%# Bind("UserName") %>' />
                </td>
			</tr>
			
            <tr>
				<td id="title"; style="text-align:right">  
                    FirstName:
				</td>
                <td id="content"; style="text-align:left">
                    <asp:Label ID="FirstNameLabel1" runat="server" Text='<%# Bind("FirstName") %>' />
                </td>

			</tr>
			
              <tr>
				<td id="title"; style="text-align:right">  
                  LastName:
				</td>
                <td id="content"; style="text-align:left">
                   <asp:Label ID="LastNameLabel1" runat="server" Text='<%# Bind("LastName") %>' />
                </td>
			</tr>
		
              <tr>
				<td id="title"; style="text-align:right">  
                   City:
				</td>
                <td id="content"; style="text-align:left">
                    <asp:Label ID="CityLabel1" runat="server" Text='<%# Bind("City") %>' />
                </td>
 
			</tr>
        
            <tr>
				<td id="title"; style="text-align:right">  
                  State:
				</td>
                <td id="content"; style="text-align:left">
                   <asp:Label ID="StateLabel1" runat="server" Text='<%# Bind("State") %>' />
                </td>
			</tr>
            
            <tr>
				<td id="title"; style="text-align:right">  
                  Phone:
				</td>
                <td id="content"; style="text-align:left">
                    <asp:Label ID="PhoneLabel1" runat="server" Text='<%# Bind("Phone") %>' />
                </td>

			</tr>

             <tr>
				<td id="title"; style="text-align:right">  
                   Email:
				</td>
                <td id="content"; style="text-align:left">
                   <asp:Label ID="EmailLabel1" runat="server" Text='<%# Bind("Email") %>' />
                </td>
			</tr>

            <tr>
                 <td style="text-align:right;">
                       <asp:Button ID="EditButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                  </td>
                  <td style="text-align:left;">
                       <asp:Button ID="DeleteButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnclientClick="return confirm('Are you sure you want to delete this patron?')" />
                  </td>

            </tr>
            
		</table>
           </ItemTemplate>
        </asp:FormView>
&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" 
    DeleteCommand="DELETE FROM [Project_User] WHERE [UserID] = @UserID" 
    InsertCommand="INSERT INTO [Project_User] ([UserID], [FirstName], [LastName], [Phone], [City], [State], [Email]) VALUES (@UserID, @FirstName, @LastName, @Phone, @City, @State, @Email)" 
    SelectCommand="SELECT Project_User.UserID, aspnet_Users.UserName, Project_User.FirstName, Project_User.LastName, Project_User.City, Project_User.State, Project_User.Phone, Project_User.Email FROM Project_User INNER JOIN aspnet_Users ON Project_User.UserID = aspnet_Users.UserId INNER JOIN aspnet_Roles ON aspnet_Users.ApplicationId = aspnet_Roles.ApplicationId WHERE (Project_User.UserID = @UserID)" 
    UpdateCommand="UPDATE [Project_User] SET [FirstName] = @FirstName, [LastName] = @LastName, [Phone] = @Phone, [City] = @City, [State] = @State, [Email] = @Email WHERE [UserID] = @UserID">
            <DeleteParameters>
                <asp:Parameter Name="UserID" Type="Object" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserID" Type="Object" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="UserID" QueryStringField="UserID" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="UserID" Type="Object" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="MID" HeaderText="MID" InsertVisible="False" ReadOnly="True" SortExpression="MID" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
                <asp:BoundField DataField="DateDueBack" HeaderText="DateDueBack" SortExpression="DateDueBack" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT project_Materials2.MID, project_Materials2.Title, project_Materials2.Author, project_Materials2.Publisher, project_Borrow.DateDueBack FROM project_Borrow INNER JOIN project_Materials2 ON project_Borrow.MID = project_Materials2.MID WHERE (project_Borrow.PID = @UserID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="UserID" QueryStringField="UserID" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </li>
        </div>
</asp:Content>

