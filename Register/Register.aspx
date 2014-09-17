<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
            text-align: right;
            width: 218px;
        }
        .style3
        {
            width: 218px;
        }
        .style4
        {
            width: 384px;
            margin-left: 40px;
        }
        .style5
        {
            width: 384px;
            text-align: left;
            margin-left: 40px;
        }
        .style6
        {
            font-size: small;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {

        }

// ]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        Registration Page
    </h1>
        <table class="style1">
            <tr>
                <td class="style2">
                    User Name:</td>
                <td class="style5">
                    <asp:TextBox ID="userNameTxtBox" runat="server" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="userNameValidator" runat="server" 
                        ControlToValidate="userNameTxtBox" ErrorMessage="User Name is required!" 
                        ForeColor="Red" CssClass="style6"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Email:</td>
                <td class="style5">
                    <asp:TextBox ID="emailTxtBox" runat="server" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="emailTxtBox" ErrorMessage="Email is required!" 
                        ForeColor="Red" CssClass="style6"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="emailTxtBox" CssClass="style6" 
                        ErrorMessage="Thats not a valid email" ForeColor="Red" style="text-align: left" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Password:</td>
                <td class="style5">
                    <asp:TextBox ID="passwordTxtBox" runat="server" TextMode="Password" 
                        Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="passwordTxtBox" ErrorMessage="Password is required" 
                        ForeColor="Red" CssClass="style6"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Passwords must match" ForeColor="Red" 
                        ControlToCompare="passwordTxtBox" ControlToValidate="confirmPasswordTxtBox" 
                        CssClass="style6"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Confirm Password:</td>
                <td class="style5">
                    <asp:TextBox ID="confirmPasswordTxtBox" runat="server" TextMode="Password" 
                        Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="confirmPasswordTxtBox" 
                        ErrorMessage="You have to confirm your password" ForeColor="Red" 
                        CssClass="style6"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="registerButton" runat="server" onclick="registerButton_Click" 
                        Text="Register" />
                    <input id="Reset1" type="reset" value="reset" onclick="return Reset1_onclick()" /></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="lblRegistrationMessage" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
