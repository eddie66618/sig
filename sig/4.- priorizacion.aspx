<%@ page title="" language="VB" masterpagefile="~/MasterPage.master" autoeventwireup="false" inherits="Default2, App_Web_qf3efdee" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
        
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD_NEGOCIOSREPConnectionString %>" SelectCommand="select * from ge_actividades"
                UpdateCommand="update ge_actividades set
                                 actividad=@actividad
                                ,departamento_ti=@departamento_ti
                                ,area_usuario=@area_usuario
                                ,interesado=@interesado
                                ,responsable=@responsable
                                ,fecha_solicitud=@fecha_solicitud
                                ,fecha_asignacion=@fecha_asignacion
                                ,fecha_fin=@fecha_fin
                                ,estado=@estado
                                ,prioridad=@prioridad
                                ,avance=@avance
                                where id_actividad=@id_actividad">
                <UpdateParameters>
                    <asp:Parameter Name="actividad" />
                    <asp:Parameter Name="departamento_ti" />
                    <asp:Parameter Name="area_usuario" />
                    <asp:Parameter Name="interesado" />
                    <asp:Parameter Name="responsable" />
                    <asp:Parameter Name="fecha_solicitud" />
                    <asp:Parameter Name="fecha_asignacion" />
                    <asp:Parameter Name="fecha_fin" />
                    <asp:Parameter Name="estado" />
                    <asp:Parameter Name="prioridad" />
                    <asp:Parameter Name="avance" />
                    <asp:Parameter Name="id_actividad" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="id_actividad" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id_actividad" HeaderText="id_actividad" SortExpression="id_actividad" ReadOnly="True" Visible="False" />
                    <asp:TemplateField HeaderText="Prioridad" SortExpression="prioridad">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("prioridad", "{0:N0}") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("prioridad", "{0:N0}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="departamento_ti" HeaderText="Dpto TI" SortExpression="departamento_ti" >
                    </asp:BoundField>
                    <asp:BoundField DataField="actividad" HeaderText="Actividad" SortExpression="actividad" >
                    </asp:BoundField>
                    <asp:BoundField DataField="area_usuario" HeaderText="Área Usuaria" SortExpression="area_usuario" >
                    </asp:BoundField>
                    <asp:BoundField DataField="interesado" HeaderText="interesado" SortExpression="interesado" Visible="False" >
                    </asp:BoundField>
                    <asp:BoundField DataField="responsable" HeaderText="Responsable" SortExpression="responsable" >
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Solicitud" SortExpression="fecha_solicitud">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fecha_solicitud", "{0:d}") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("fecha_solicitud", "{0:dd-MM-yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Asignación" SortExpression="fecha_asignacion">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("fecha_asignacion", "{0:d}") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("fecha_asignacion", "{0:dd-MM-yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fin" SortExpression="fecha_fin">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("fecha_fin", "{0:d}") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("fecha_fin", "{0:dd-MM-yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" >
                    </asp:BoundField>
                    <asp:BoundField DataField="avance" DataFormatString="{0:F2}" HeaderText="% Avance" SortExpression="avance" />
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

