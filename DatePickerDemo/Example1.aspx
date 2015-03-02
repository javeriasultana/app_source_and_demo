<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example1.aspx.cs" Inherits="DatePickerDemo.Example1" %>

<%@ Register Assembly="DatePickerControl" Namespace="DatePickerControl" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Example 1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Example 1: A simple date picker</h2>
        <p>
            Please choose a date:
            <cc1:DatePicker ID="DatePicker1" runat="server" />
        </p>
        <p>
            <asp:Button ID="cmdSubmit" runat="server" OnClick="cmdSubmit_Click" Text="Submit" />&nbsp;<asp:CheckBox
                ID="chkEnabled" runat="server" AutoPostBack="True" Checked="True" OnCheckedChanged="chkEnabled_CheckedChanged"
                Text="enabled" /></p>
        <p>
            <asp:Label ID="lblResult" runat="server"></asp:Label>&nbsp;</p>
        <p>
            This is a very basic example of the date picker control. In the click event of the
            "Submit" button the selected date is read from the <strong><span style="font-size: 11pt;
                color: blue; font-family: Courier New">CalendarDate</span></strong> property
            of the date picker control. If an invalid date has been entered, this property returns
            <span style="font-size: 11pt; color: blue; font-family: Courier New"><strong>DateTime.MaxValue</strong></span>,
            but the entered text can still be read from the <span style="font-size: 11pt; color: blue;
                font-family: Courier New"><strong>CalendarDateString</strong></span> property.</p>
        <p>
            Additionally this example shows how the date picker control can be disabled by setting
            the property <span style="font-size: 11pt; color: blue; font-family: Courier New"><strong>
                Enabled</strong></span> to <span style="font-size: 11pt; color: blue; font-family: Courier New">
                    <strong>false</strong></span>.</p>
        <p>
            <a href="Default.aspx">Back</a></p>
    </div>
    </form>
</body>
</html>
