
Partial Class search
    Inherits System.Web.UI.Page

Protected Sub tbTool_TextChanged(sender As Object, e As EventArgs) Handles tbTool.TextChanged

        'search by title or author or description 
        Dim searchWord As String
        searchWord = "Select * From project_materials2 where (Title LIKE '%" + tbTool.Text.ToString() + "%') OR (Author LIKE '%" + tbTool.Text.ToString() + "%') OR (Description LIKE '%" + tbTool.Text.ToString() + "%') OR (ISBN LIKE '%" + tbTool.Text.ToString() + "%') OR (MID LIKE '%" + tbTool.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord


    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tbTool.Focus()
    End Sub
End Class
