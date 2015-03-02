<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example7.aspx.cs" Inherits="DatePickerDemo.Example7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Example 7</title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Example 7: Dynamically created control</h2>
    <div>
    
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    
    </div>
    
        <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Postback" />
    <br />
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
    <p>This example shows how date picker controls can be dynamically created in code behind.</p>
    <p>
        <a href="Default.aspx">Back</a></p>
    </form>
</body>
</html>
