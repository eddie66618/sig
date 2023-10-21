Imports System.Data
Imports System.Data.SqlClient

Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Public id1 As String
    Dim usu As String
    Dim conn As String = System.Configuration.ConfigurationManager.ConnectionStrings("BD_NEGOCIOSREPConnectionString").ConnectionString
    Dim sqlconnection As New SqlConnection(conn)
    Private cmd As New SqlCommand("", sqlconnection)
    Dim Dst As New DataSet
    Dim strQuery As String
    Dim valor As Integer
    Dim jscript As String
    Protected Sub ContentPlaceHolder1_Load(sender As Object, e As EventArgs) Handles ContentPlaceHolder1.Load
        id1 = Request.QueryString("id1")
    End Sub
    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("Principal.aspx", False)
    End Sub
    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("Configuracion.aspx", False)
    End Sub
    Protected Sub ImageButton2_Load(sender As Object, e As EventArgs) Handles ImageButton2.Load
        usu = Request.ServerVariables("LOGON_USER")
        sqlconnection.Open()
        strQuery = "select 1 from sg_autorizaciones where usuario='" & usu & "' and [admin]=1"
        cmd = New SqlCommand(strQuery, sqlconnection)
        valor = cmd.ExecuteScalar()
        If valor = 0 Then
            ImageButton2.Visible = False
        Else
            ImageButton2.Visible = True
        End If
        sqlconnection.Close()
    End Sub
    Protected Sub HyperLink1_load(sender As Object, e As EventArgs) Handles HyperLink1.Load
        usu = Request.ServerVariables("LOGON_USER")
        sqlconnection.Open()
        strQuery = "select 1 from sg_autorizaciones where usuario='" & usu & "' and [gerencia_general]=1"
        cmd = New SqlCommand(strQuery, sqlconnection)
        valor = cmd.ExecuteScalar()
        If valor = 0 Then
            HyperLink1.Visible = False
            HyperLink6.Visible = False
        Else
            HyperLink1.Visible = True
            HyperLink6.Visible = True
        End If
        sqlconnection.Close()
    End Sub
    Protected Sub HyperLink2_load(sender As Object, e As EventArgs) Handles HyperLink2.Load
        usu = Request.ServerVariables("LOGON_USER")
        sqlconnection.Open()
        strQuery = "select 1 from sg_autorizaciones where usuario='" & usu & "' and [negocios]=1"
        cmd = New SqlCommand(strQuery, sqlconnection)
        valor = cmd.ExecuteScalar()
        If valor = 0 Then
            HyperLink2.Visible = False
            HyperLink7.Visible = False
        Else
            HyperLink2.Visible = True
            HyperLink7.Visible = True
        End If
        sqlconnection.Close()
    End Sub
    Protected Sub HyperLink3_load(sender As Object, e As EventArgs) Handles HyperLink3.Load
        usu = Request.ServerVariables("LOGON_USER")
        sqlconnection.Open()
        strQuery = "select 1 from sg_autorizaciones where usuario='" & usu & "' and [planeamiento_comercial]=1"
        cmd = New SqlCommand(strQuery, sqlconnection)
        valor = cmd.ExecuteScalar()
        If valor = 0 Then
            HyperLink3.Visible = False
            HyperLink8.Visible = False
        Else
            HyperLink3.Visible = True
            HyperLink8.Visible = True
        End If
        sqlconnection.Close()
    End Sub
    Protected Sub HyperLink4_load(sender As Object, e As EventArgs) Handles HyperLink4.Load
        usu = Request.ServerVariables("LOGON_USER")
        sqlconnection.Open()
        strQuery = "select 1 from sg_autorizaciones where usuario='" & usu & "' and [planeamiento_control_gestion]=1"
        cmd = New SqlCommand(strQuery, sqlconnection)
        valor = cmd.ExecuteScalar()
        If valor = 0 Then
            HyperLink4.Visible = False
            HyperLink9.Visible = False
        Else
            HyperLink4.Visible = True
            HyperLink9.Visible = True
        End If
        sqlconnection.Close()
    End Sub
    Protected Sub HyperLink5_load(sender As Object, e As EventArgs) Handles HyperLink5.Load
        usu = Request.ServerVariables("LOGON_USER")
        sqlconnection.Open()
        strQuery = "select 1 from sg_autorizaciones where usuario='" & usu & "' and [talento_humano]=1"
        cmd = New SqlCommand(strQuery, sqlconnection)
        valor = cmd.ExecuteScalar()
        If valor = 0 Then
            HyperLink5.Visible = False
            HyperLink10.Visible = False
        Else
            HyperLink5.Visible = True
            HyperLink10.Visible = True
        End If
        sqlconnection.Close()
    End Sub
End Class

