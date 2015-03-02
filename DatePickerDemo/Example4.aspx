<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example4.aspx.cs" Inherits="DatePickerDemo.Example4" %>
<%@ Register Assembly="DatePickerControl" Namespace="DatePickerControl" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Example 4</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <h2>Example 4: AJAX update panel</h2>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <div style="border:solid 1px lightblue; padding:10px;">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label>
                    <br />
                    <br />
                    Please enter a date:<br />
                    <cc1:DatePicker ID="DatePicker1" runat="server" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Choose a date!"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="cmdAsync" runat="server" Text="Do async postback" 
                        onclick="cmdAsync_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <p>
            This example shows a date picker and a <span style="font-size: 11pt; color: blue; font-family: Courier New"><strong>Button</strong></span> control inside of an 
            <span style="font-size: 11pt; color: blue; font-family: Courier New"><strong>UpdatePanel</strong></span>. </p>
        <p>
        <a href="Default.aspx">Back</a></p>
    </form>
</body>
</html>
