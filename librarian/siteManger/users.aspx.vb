
Partial Class librarian_siteManger_user
    Inherits System.Web.UI.Page
    Protected Sub Page_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender


        Users.DataSource = Membership.GetAllUsers()
        Users.DataBind()

    End Sub
End Class
