﻿Imports System.Data.SqlClient

Partial Class Patron_AddNewPatron
    Inherits System.Web.UI.Page

    Protected Sub CreateUserWizard1_ActiveStepChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUserWizard1.ActiveStepChanged

        ' Have we JUST reached the Complete step?      
        If CreateUserWizard1.ActiveStep.Title = "Complete" Then

            Dim UserSettings As WizardStep = CType(CreateUserWizard1.FindControl("UserProfile"), WizardStep)

            ' Programmatically reference the TextBox controls           
            Dim FirstName As TextBox = CType(UserSettings.FindControl("tb_FirstName"), TextBox)
            Dim LastName As TextBox = CType(UserSettings.FindControl("tb_LastName"), TextBox)
            Dim Phone As TextBox = CType(UserSettings.FindControl("tb_Phone"), TextBox)
            Dim City As TextBox = CType(UserSettings.FindControl("tb_City"), TextBox)
            Dim strPostalCode As String = ddl_Zip.SelectedItem.Text
            Dim Email As TextBox = CType(UserSettings.FindControl("tb_Email"), TextBox)

            ' Update the UserProfiles record for this user           
            ' Get the UserId of the just-added user           
            Dim newUser As MembershipUser = Membership.GetUser(CreateUserWizard1.UserName)
            Dim newUserID As Guid = CType(newUser.ProviderUserKey, Guid)

            'Add the newly created user to the "Customer" role
            Roles.AddUserToRole(newUser.UserName, "r_patron")

            ' Insert a new record into UserProfiles           
            Dim connectionString As String = ConfigurationManager.ConnectionStrings("SouthLiberty").ConnectionString
            Dim updateSql As String = "INSERT INTO [Project_User] ([UserID], [FirstName], [LastName], [Phone],[City], [State],[Email]) VALUES (@UserId,  @FirstName,  @LastName, @Phone,  @City, @State, @Email)"


            Using myConnection As New SqlConnection(connectionString)
                myConnection.Open()
                Dim myCommand As New SqlCommand(updateSql, myConnection)
                myCommand.Parameters.Add(New SqlParameter("@State", strPostalCode))
                myCommand.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim())
                myCommand.Parameters.AddWithValue("@LastName", LastName.Text.Trim())
                myCommand.Parameters.AddWithValue("@Phone", Phone.Text.Trim())
                myCommand.Parameters.AddWithValue("@City", City.Text.Trim())
                myCommand.Parameters.AddWithValue("@Email", Email.Text.Trim())
                myCommand.Parameters.AddWithValue("@UserId", newUserID)
                myCommand.ExecuteNonQuery()
                myConnection.Close()
            End Using

        End If

    End Sub




    Protected Sub ContinueButton_Click(sender As Object, e As EventArgs)
        Response.AddHeader("REFRESH", "1;URL=./Admin_ViewPatrons.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        CreateUserWizard1.Focus()
    End Sub

End Class
