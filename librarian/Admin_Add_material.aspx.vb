
Partial Class librarian_Admin_Add_material
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Label3.Text = "Item has been Added"
        Response.Redirect("~/librarian/Admin_materials.aspx")
    End Sub
End Class
