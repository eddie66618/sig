Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.Reporting.WebForms
Partial Class _2___EvolutivoMensual
    Inherits System.Web.UI.Page
    Dim usu As String
    Dim pInfo As ReportParameterInfoCollection
    Dim paramList As New Generic.List(Of ReportParameter)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            usu = Request.ServerVariables("LOGON_USER")
            Cargar_Reporte()
        End If
    End Sub
    Public Sub Cargar_Reporte()
        paramList.Clear()
        ReportViewer1.ServerReport.ReportServerUrl = New Uri("http://10.5.5.228/reportserver")
        ReportViewer1.ServerReport.ReportPath = "/marketing/rv_th_jefes"
        'paramList.Add(New ReportParameter("usuario", usu, False))
        'ReportViewer1.ServerReport.SetParameters(paramList)
        'pInfo = ReportViewer1.ServerReport.GetParameters()
        ReportViewer1.ServerReport.Refresh()
    End Sub
End Class
