<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 111px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        Login Page
    </h1>
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                User Name:</td>
            <td>
                <asp:TextBox ID="userNameLoginTxtBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password:</td>
            <td>
                <asp:TextBox ID="loginPasswordTxtBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
                    <p>
                            Click <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register/Register.aspx">here</asp:HyperLink> &nbsp;to register
                    </p>
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>

    </form>
</body>
</html>
