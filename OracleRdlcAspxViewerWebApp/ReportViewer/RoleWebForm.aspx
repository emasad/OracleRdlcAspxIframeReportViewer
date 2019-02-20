<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleWebForm.aspx.cs" Inherits="OracleRdlcAspxViewerWebApp.ReportViewer.RoleWebForm" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <%-- <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="755px">
            <LocalReport ReportPath="Reports\RoleReport.rdlc">
            </LocalReport>
        </rsweb:ReportViewer>--%>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%"></rsweb:ReportViewer>
        
    </div>
    </form>
</body>
</html>
