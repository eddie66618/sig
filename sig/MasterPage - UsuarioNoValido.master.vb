
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Public id1 As String
    Protected Sub ContentPlaceHolder1_Load(sender As Object, e As EventArgs) Handles ContentPlaceHolder1.Load
        id1 = Request.QueryString("id1")
    End Sub
    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("UsuarioNoValido.aspx", False)
    End Sub
End Class

