Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.Reporting.WebForms
Partial Class Default2
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
        ReportViewer2.ServerReport.ReportServerUrl = New Uri("http://10.5.5.228/reportserver")
        ReportViewer2.ServerReport.ReportPath = "/marketing/seguimiento_bases"
        'paramList.Add(New ReportParameter("fecha", "30/09/2020", True))
        paramList.Add(New ReportParameter("usuario", usu, False))
        'paramList.Add(New ReportParameter("saldo_total", CDate(strFecha), False))
        ReportViewer2.ServerReport.SetParameters(paramList)
        pInfo = ReportViewer2.ServerReport.GetParameters()
        ReportViewer2.ServerReport.Refresh()

        ' Process and render the report
        'ReportViewer2.RefreshReport()
    End Sub
End Class
