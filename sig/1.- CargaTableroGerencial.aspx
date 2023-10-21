<%@ page title="" language="VB" masterpagefile="~/MasterPage.master" autoeventwireup="false" inherits="Default2, App_Web_noarvyeq" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
        
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD_NEGOCIOSREPConnectionString %>" SelectCommand="select * from [rptng_tablero]
                                where month(fecha)=month(getdate())
                                and year(fecha)=year(getdate())
order by fecha desc"
                UpdateCommand="update [rptng_tablero] set
                                 AhorroCliente=@AhorroCliente
                                ,Plazo_Fijo=@Plazo_Fijo
                                ,CTS=@CTS
                                ,CobranzaVigente=@CobranzaVigente
                                ,CobranzaVencido=@CobranzaVencido
                                ,contact_AseMKT=@contact_AseMKT
                                ,datos_confiables=@datos_confiables
                                ,datos_confiablesTOTAL=@datos_confiablesTOTAL
                                ,BIMS=@BIMS
                                ,BIMERS=@BIMERS
                                ,BIM_PAGOS_M=@BIM_PAGOS_M
                                ,BIM_PAGOS_N=@BIM_PAGOS_N
                                ,KAS_PAGOS_M=@KAS_PAGOS_M
                                ,KAS_PAGOS_N=@KAS_PAGOS_N
                                where fecha=@fecha">
                <UpdateParameters>
                    <asp:Parameter Name="AhorroCliente" />
                    <asp:Parameter Name="Plazo_Fijo" />
                    <asp:Parameter Name="CTS" />
                    <asp:Parameter Name="CobranzaVigente" />
                    <asp:Parameter Name="CobranzaVencido" />
                    <asp:Parameter Name="contact_AseMKT" />
                    <asp:Parameter Name="datos_confiables" />
                    <asp:Parameter Name="datos_confiablesTOTAL" />
                    <asp:Parameter Name="BIMS" />
                    <asp:Parameter Name="BIMERS" />
                    <asp:Parameter Name="BIM_PAGOS_M" />
                    <asp:Parameter Name="BIM_PAGOS_N" />
                    <asp:Parameter Name="KAS_PAGOS_M" />
                    <asp:Parameter Name="KAS_PAGOS_N" />
                    <asp:Parameter Name="fecha" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="fecha" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" DataFormatString="{0:d}" ReadOnly="True" />
                    <asp:BoundField DataField="AhorroCliente" HeaderText="Ahorro" SortExpression="AhorroCliente" DataFormatString="{0:N}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Plazo_Fijo" HeaderText="DPF" SortExpression="Plazo_Fijo" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CTS" HeaderText="CTS" SortExpression="CTS" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="saldoVigente" HeaderText="S. Vig" SortExpression="saldoVigente" ReadOnly="True" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="saldoMora" HeaderText="S. Ven" SortExpression="saldoMora" ReadOnly="True" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="desembolsos" HeaderText="Desem" SortExpression="desembolsos" ReadOnly="True" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CobranzaVigente" HeaderText="Cob. Vig" SortExpression="CobranzaVigente" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CobranzaVencido" HeaderText="Cob. Ven" SortExpression="CobranzaVencido" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Reprogramaciones" HeaderText="Repro" SortExpression="Reprogramaciones" DataFormatString="{0:N0}" ReadOnly="True" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="contact_AseMKT" HeaderText="Contac" SortExpression="contact_AseMKT" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="datos_confiables" HeaderText="Confiables" SortExpression="datos_confiables" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="datos_confiablesTOTAL" HeaderText="Contact Total" SortExpression="datos_confiablesTOTAL" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="BIMS" HeaderText="BIMS" SortExpression="BIMS" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="BIMERS" HeaderText="BIMERS" SortExpression="BIMERS" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="BIM_PAGOS_M" HeaderText="S/ Pagos BIM" SortExpression="BIM_PAGOS_M" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="BIM_PAGOS_N" HeaderText="Nro Pagos BIM" SortExpression="BIM_PAGOS_N" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="KAS_PAGOS_M" HeaderText="S/ Pagos KASNET" SortExpression="KAS_PAGOS_M" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="KAS_PAGOS_N" HeaderText="Nro Pagos KASNET" SortExpression="KAS_PAGOS_N" DataFormatString="{0:N0}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </p>
</asp:Content>

