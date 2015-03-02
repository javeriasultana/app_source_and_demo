<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pickup.aspx.cs" Inherits="DatePickerDemo.WebForm1" %><%@ Register assembly="DatePickerControl" namespace="DatePickerControl" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body bgcolor="#0000ff">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <table bgcolor="#99FF66" class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="DATE"></asp:Label>
                </td>
                <td>
                    <cc1:DatePicker ID="DatePicker1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="TIME"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="WEIGHT"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                        Width="83px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
