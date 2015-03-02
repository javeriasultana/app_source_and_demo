<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example8.aspx.cs" Inherits="DatePickerDemo.Example8" %>

<%@ Register Assembly="DatePickerControl" Namespace="DatePickerControl" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Example 8</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Example 8: AutoPostBack / DateChanged event</h2>
        <p>
            1st DatePicker, AutoPostBack = false:<br />
            <cc1:DatePicker ID="DatePicker1" runat="server" />
        </p>
        <p>
            2nd DatePicker, AutoPostBack = true:<br />
            <cc1:DatePicker ID="DatePicker2" runat="server" AutoPostBack="true" 
                ondatechanged="DatePicker2_DateChanged"  />
        </p>

        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Choose a date!"></asp:Label>
        <p>
            The second DatePicker has set its 
            <strong><span style="font-size: 11pt;color: blue; font-family: Courier New">AutoPostBack</span></strong>
            property set to 
            <strong><span style="font-size: 11pt;color: blue; font-family: Courier New">true</span></strong>, which will
            generate a postback every time a date is selected in the popup calendar. The DatePicker control then
            raises the <strong><span style="font-size: 11pt;color: blue; font-family: Courier New">DateChanged</span></strong> event,
            which contains the selected date in its event argument.
        </p>
    </div>
    
    </form>
</body>
</html>
