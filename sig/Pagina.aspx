<%@ page language="VB" autoeventwireup="false" inherits="Pagina, App_Web_ortasmds" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">
       
    function CloseWindow(){
      window.opener = self;
      window.close('Principal.aspx');
    }
        
    function OpenHomePage(){
        window.open('Principal.aspx', '_self', 'toolbar = no, scrollbars = no, resizable = no, top = 500, left = 500, width = 400, height = 400');
        // "width=100,height=100, resizable=0, status=0, scrollbars=0");
        CloseWindow();
    }
    </script>
</head>
<body onload="OpenHomePage()">
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
