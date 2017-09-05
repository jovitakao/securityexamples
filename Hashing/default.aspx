<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Hashing._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%">
        <tr>
            <td>密碼:<asp:TextBox ID="txtPwd" runat="server" Text="p@ssw0rd"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Salt:<asp:TextBox ID="txtSalt" runat="server" Text="123"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnGenHash" runat="server" Text="產生Hash字串" OnClick="btnGenHash_Click" />
            </td>
        </tr>
        <tr>
            <td>Hash密碼:<asp:TextBox ID="txtPwdHash" runat="server" Width="100%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Hash密碼WithSalt:<asp:TextBox ID="txtPwdHashSalt" runat="server" Width="100%"></asp:TextBox></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
