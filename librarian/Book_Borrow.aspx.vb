Imports System.Data.SqlClient
Partial Class librarian_Borrow
    Inherits System.Web.UI.Page
    
    Protected Sub btn_Borrow_Click(sender As Object, e As EventArgs) Handles btn_Borrow.Click

        Dim availab As String
        Dim sqlConn1 As New SqlConnection(ConfigurationManager.ConnectionStrings("SouthLiberty").ConnectionString)
        Dim sqlCmd1 As New SqlCommand
        Dim strToolId As String = tb_materialID.Text
        Dim strUserName As String = tb_userName.Text

        Dim RentDate As DateTime = DateTime.Now
        Dim DateDueBack As DateTime = DateAdd("d", 30, Today)
        Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("SouthLiberty").ConnectionString)
        Dim sqlAdp As New SqlDataAdapter
        Dim sqlCmd As New SqlCommand

        sqlCmd1.Connection = sqlConn1
        sqlCmd1.CommandText = "SELECT [Availability] FROM [project_Materials2] WHERE [MID] = " + tb_materialID.Text + " "
        sqlConn1.Open()
        availab = sqlCmd1.ExecuteScalar()
        sqlConn1.Close()

        If availab = "Yes" Then

            sqlCmd.Connection = sqlConn
            sqlCmd.CommandText = "sp_TR_RentTool2"
            sqlCmd.CommandType = Data.CommandType.StoredProcedure
            sqlCmd.Parameters.Add(New SqlParameter("@UserName", strUserName))
            sqlCmd.Parameters.Add(New SqlParameter("@MID", strToolId))
            sqlCmd.Parameters.Add(New SqlParameter("@RentDate", RentDate))
            sqlCmd.Parameters.Add(New SqlParameter("@DateDueBack", DateDueBack))
            sqlConn.Open()
            sqlCmd.ExecuteNonQuery()
            sqlConn.Close()

            Response.Redirect("ViewAllBorrows.aspx")
        Else

            Label1.Text = "This material has already been checked out!"

        End If



    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tb_UserName.Focus()
    End Sub
End Class
