Imports System.Data.SqlClient

Partial Class librarian_Book_Return
    Inherits System.Web.UI.Page

    Protected Sub btn_Return_Click(sender As Object, e As EventArgs) Handles btn_Return.Click

        Dim strToolId As String = tb_ToolID.Text

        Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("SouthLiberty").ConnectionString)

        Dim sqlAdp As New SqlDataAdapter
        Dim sqlCmd As New SqlCommand

        sqlCmd.Connection = sqlConn
        sqlCmd.CommandText = "sp_project_Return"
        sqlCmd.CommandType = Data.CommandType.StoredProcedure

        sqlCmd.Parameters.Add(New SqlParameter("@MID", strToolId))

        sqlConn.Open()
        sqlCmd.ExecuteNonQuery()
        sqlConn.Close()

        Response.Redirect("ViewAllBorrows.aspx")


    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tb_ToolID.Focus()
    End Sub
End Class

