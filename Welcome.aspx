<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome_Page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 310px;
            height: 23px;
        }
        .style6
        {
            width: 140px;
        }
        .style8
        {
            width: 310px;
        }
        .style14
        {
            width: 361px;
        }
        .style15
        {
            width: 361px;
            text-align: right;
        }
        .style16
        {
            width: 362px;
        }
        .style17
        {
            width: 362px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        Welcome to my weather forecast application
    </h1>
    </div>
    <table class="style1">
        <tr>
            <td class="style3">
                Type city in to get a weather forecast:</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:TextBox ID="getWeathertxtbox" runat="server" Height="23px" Width="223px"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td class="style8">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="margin-left: 0px" Text="Get Weather" />
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
                <tr>
            <td class="style8">
                <asp:Button ID="btnChange" runat="server" Height="24px" 
                    onclick="btnChange_Click" Text="Change to European values" Visible="False" 
                    Width="186px" />
            </td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style14">
                <h3>
&nbsp;<asp:Label ID="lblCity" runat="server"></asp:Label>
                </h3>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblObservationTime" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblTemperature" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblWindSpeed" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblHumidity" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblVisibility" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblPressure" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style16">
                <h3>
                    <asp:Label ID="lblCity0" runat="server"></asp:Label>
                </h3>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="lblObservationTime0" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="lblTemperature0" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="lblWindSpeed0" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style14">
                <h3>
&nbsp;<asp:Label ID="lblCity1" runat="server"></asp:Label>
                </h3>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblObservationTime1" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblTemperature1" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblWindSpeed1" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
