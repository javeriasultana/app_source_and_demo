<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example2.aspx.cs" Inherits="DatePickerDemo.Example2" %>
<%@ Register Assembly="DatePickerControl" Namespace="DatePickerControl" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Example 2</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Example 2: Using Validators</h2>
        <p>
            Please choose a date in January 2012:
            <cc1:DatePicker ID="DatePicker1" runat="server" />
        </p>
        <p>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DatePicker1"
                ErrorMessage="Wrong date, enter a date between 01.01.2012 and 31.01.2012!" MaximumValue="31.01.2012"
                MinimumValue="01.01.2012" Type="Date" Display="Dynamic" SetFocusOnError="True"></asp:RangeValidator>
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator1" runat="server" ControlToValidate="DatePicker1" Display="Dynamic"
                ErrorMessage="A date must be selected." SetFocusOnError="True"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="cmdSubmit" runat="server" OnClick="cmdSubmit_Click" Text="Submit" />&nbsp;</p>
        <p>
            <asp:Label ID="lblResult" runat="server"></asp:Label>&nbsp;</p>
        <p>
            This example uses a <span style="font-size: 11pt; color: blue; font-family: Courier New">
                <strong>RequiredFieldValidator</strong></span> to catch empty values and a <span
                    style="font-size: 11pt; color: blue; font-family: Courier New"><strong>RangeValidator</strong></span>
            to verify whether the selected date is within January 2012.</p>
        <p>
            Note that client side validation is not supported at the moment.</p>
        <p>
            <a href="Default.aspx">Back</a></p>
    </div>
    </form>
</body>
</html>
