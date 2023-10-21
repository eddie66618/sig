Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Dim conn As String = ConfigurationManager.ConnectionStrings("BD_NEGOCIOSREPConnectionString").ConnectionString
        con.ConnectionString = conn
        con.Open()
        cmd = New SqlCommand("insert into sg_autorizaciones(usuario) values('" & TextBox1.Text & "')", con)
        cmd.ExecuteNonQuery()
        Response.Redirect("configuracion.aspx")

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    End Sub
End Class
