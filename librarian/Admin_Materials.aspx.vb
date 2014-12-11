
Partial Class materials
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound

        If e.Row.RowType = DataControlRowType.DataRow Then

            If e.Row.Cells(4).Text = "NO" Then
                e.Row.Cells(4).Text = ""
            End If

            If e.Row.Cells(4).Text = "No" Then
                e.Row.Cells(4).Text = ""
            End If
        End If

    End Sub
End Class
