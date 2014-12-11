
Partial Class admin_PatronDetails
    Inherits System.Web.UI.Page




    Protected Sub FormView1_ItemDeleted1(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted

        Dim deletedPatron As String = e.Values("FirstName").ToString

        lbl_deletePatron.Text = deletedPatron & " has been deleted form the database."

        Response.AddHeader("REFRESH", "3;URL=./Admin_ViewPatrons.aspx")


    End Sub


    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated

        Response.AddHeader("REFRESH", "2;URL=./Admin_ViewPatrons.aspx")

    End Sub
End Class
