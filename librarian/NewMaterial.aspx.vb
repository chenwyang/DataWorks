﻿
Partial Class librarian_NewMaterial
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        FormView1.Focus()
    End Sub
    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect("./Admin_Materials.aspx")
    End Sub
End Class
