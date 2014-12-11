
Partial Class admin_SearchPatron
    Inherits System.Web.UI.Page
    Protected Sub tbTool_TextChanged(sender As Object, e As EventArgs) Handles tbTool.TextChanged

        'search by title or author or description 
        Dim searchWord As String
        searchWord = "Select * From project_user where (FirstName LIKE '%" + tbTool.Text.ToString() + "%') OR (LastName LIKE '%" + tbTool.Text.ToString() + "%')  OR (Phone LIKE '%" + tbTool.Text.ToString() + "%') OR (Email LIKE '%" + tbTool.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord


    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tbTool.Focus()
    End Sub
End Class
