<%@ page language="VB" autoeventwireup="false" inherits="_Default, App_Web_ortasmds" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script language="javascript" type="text/javascript">
    window.onload = OpenWindow();
    function OpenWindow(cod){
        if (cod==1){
            window.open('Pagina.aspx','_self');
        }
        else{
            window.open('Pagina.aspx','_self');
        }
    }
     </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:AdRotator ID="AdRotator1" runat="server" />
    
    </div>
    </form>
</body>
</html>
