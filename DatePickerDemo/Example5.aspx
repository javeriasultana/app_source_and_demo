<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example5.aspx.cs" Inherits="DatePickerDemo.Example5" %>
<%@ Register Assembly="DatePickerControl" Namespace="DatePickerControl" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Example 5</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Example 5: Different date formats</h2>
        <p>
            U.S. date format mm/dd/yyyy:<cc1:DatePicker ID="DatePicker1" runat="server" 
                DateFormat="MM/dd/yyyy" />
        </p>
        <p>
            European date format dd.mm.yyyy:<cc1:DatePicker ID="DatePicker2" runat="server" 
                DateFormat="dd.MM.yyyy" />
        </p>
        <p>
            ISO 8601 date format yyyy-mm-dd:<cc1:DatePicker ID="DatePicker3" runat="server" 
                DateFormat="yyyy-MM-dd" />
        </p>
        <p>
            Short day and month names (ddd, dd. MMM yyyy):<cc1:DatePicker 
                ID="DatePicker4" runat="server" 
                DateFormat="ddd, dd. MMM yyyy" Width="150" AllowType="False" />
        </p>
        <p>
            Long day and month names (dddd, dd. MMMM yyyy):<cc1:DatePicker 
                ID="DatePicker5" runat="server" 
                DateFormat="dddd, dd. MMMM yyyy" Width="180" AllowType="False" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="cmdSubmit" runat="server" OnClick="cmdSubmit_Click" Text="Submit" />&nbsp;</p>
        <p>
            <asp:Label ID="lblResult" runat="server"></asp:Label></p>
        <p>
            <asp:Label ID="lblDate1" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblDate2" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblDate3" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblDate4" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblDate5" runat="server"></asp:Label>
        </p>
        <p>
            In this example the <span style="font-size: 11pt; color: blue; font-family: Courier New">
                <strong>DateFormat</strong></span> property of each date picker control is set.<br />
            To show a long date including the day of the week or name of the month, the width of the textbox
            can be set through the 
            <span style="font-size: 11pt; color: blue; font-family: Courier New">
                <strong>Width</strong></span> property.
            On the last two date pickers the
            <span style="font-size: 11pt; color: blue; font-family: Courier New">
                <strong>AllowType</strong></span> property is set to false, which prevents 
            you from typing into the textbox.</p>
        <p>
            <a href="Default.aspx">Back</a></p>
    </div>
    </form>
</body>
</html>
