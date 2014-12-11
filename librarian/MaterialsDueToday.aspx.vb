
Partial Class librarian_MaterialsDueToday
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        ' Declare a variable
        Dim ToolsDueToday As String

        ' Set the variable equal to the SQL statement to perform the search 
        ToolsDueToday = "SELECT * FROM project_Borrow WHERE DateDueBack >= CONVERT(datetime, CONVERT(varchar(10),GetDate(),112))"

        ' Apply the variable (SQL statement) to the data source
        SqlDataSource1.SelectCommand = ToolsDueToday


    End Sub

End Class
