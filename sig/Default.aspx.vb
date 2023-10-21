Imports System.Data.SqlClient
Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page

    Dim conn As String = System.Configuration.ConfigurationManager.ConnectionStrings("BD_NEGOCIOSREPConnectionString").ConnectionString
    Dim sqlconnection As New SqlConnection(conn)
    Private cmd As New SqlCommand("", sqlconnection)
    Dim Dst As New DataSet
    Dim strQuery As String
    Dim valor As Integer
    Dim jscript As String
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim usu As String

        usu = Request.ServerVariables("LOGON_USER")

        sqlconnection.Open()

        strQuery = "select count(*) from sg_autorizaciones where usuario='" & usu & "'"
        cmd = New SqlCommand(strQuery, sqlconnection)
        valor = cmd.ExecuteScalar()

        If valor = 0 Then
            jscript = "<script>OpenWindow(0);</script>"
        Else
            jscript = "<script>OpenWindow(1);</script>"
        End If

        Page.ClientScript.RegisterClientScriptBlock(Me.GetType, "MyKey", jscript, False)

        sqlconnection.Close()
    End Sub
End Class
