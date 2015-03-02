<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example6.aspx.cs" Inherits="DatePickerDemo.Example6" %>
<%@ Register Assembly="DatePickerControl" Namespace="DatePickerControl" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Example 6</title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Example 6: FormView example</h2>
    <asp:FormView ID="fvPerson" runat="server" DataSourceID="dsPerson" 
        BackColor="#FFFFCC" DataKeyNames="id">
        <ItemTemplate>
            ItemTemplate:<br />
            &nbsp;<br />
            &nbsp;<br />
            <table class="style1">
                <tr>
                    <td>
                        First name:</td>
                    <td>
                        <asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Last name:</td>
                    <td>
                        <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Birthday:</td>
                    <td>
                        <cc1:DatePicker ID="DatePicker1" runat="server" CalendarDate='<%# Eval("Birthdate") %>' 
                            Enabled="False" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <EditItemTemplate>
            EditTemplate:<br />
            &nbsp;<br />
            &nbsp;<table class="style1">
                <tr>
                    <td>
                        First name:</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Last name:</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Birthday:</td>
                    <td>
                        <cc1:DatePicker ID="DatePicker1" runat="server" CalendarDate='<%# Bind("Birthdate") %>' />
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
    </asp:FormView>
    <br />
    <asp:Button ID="cmdEdit" runat="server" onclick="cmdEdit_Click" Text="Edit" />
&nbsp;<asp:Button ID="cmdSave" runat="server" Enabled="False" 
        onclick="cmdSave_Click" Text="Save" />
    <br />
    <p>This example shows a disabled date picker control within the <span style="font-size: 11pt; color: blue; font-family: Courier New"><strong>ItemTemplate</strong></span> of a <span style="font-size: 11pt; color: blue; font-family: Courier New"><strong>FormView</strong></span> control, and another (enabled) one
    within the <span style="font-size: 11pt; color: blue; font-family: Courier New"><strong>EditITemTemplate</strong></span>.
    Both date pickers have the <span style="font-size: 11pt; color: blue; font-family: Courier New"><strong>CalendarDate</strong></span> property bound to the "Birthdate" field of the data source.
    </p>
    <p>
        <a href="Default.aspx">Back</a></p>
        
    <asp:ObjectDataSource ID="dsPerson" runat="server" SelectMethod="GetPersons" 
        TypeName="DataAccessLayer" UpdateMethod="UpdatePerson">
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter Name="birthdate" Type="DateTime" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    </form>
</body>
</html>
