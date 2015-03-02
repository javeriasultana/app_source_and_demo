<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example3.aspx.cs" Inherits="DatePickerDemo.Example3" %>
<%@ Register Assembly="DatePickerControl" Namespace="DatePickerControl" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Example 3</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Example 3: Data-binding in GridView</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="dsPersons" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="First name" />
                <asp:BoundField DataField="LastName" HeaderText="Last name" />
                <asp:TemplateField HeaderText="Birthdate">
                    <EditItemTemplate>
                        <cc1:DatePicker ID="DatePicker1" runat="server" CalendarDate='<%# Bind("Birthdate") %>'/>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Birthdate", "{0:dd.MM.yyyy}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        
        <asp:ObjectDataSource ID="dsPersons" runat="server"
            SelectMethod="GetPersons" TypeName="DataAccessLayer" UpdateMethod="UpdatePerson">
            <UpdateParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter Name="birthdate" Type="DateTime" />
            </UpdateParameters>
        </asp:ObjectDataSource>

        <p>
            This example uses the date picker within a <span style="font-size: 11pt; color: blue; font-family: Courier New"><strong>GridView</strong></span>
            control. Click on the "Edit" link on a row in the grid to switch into edit mode.</p>
        <p>
            Note that the &quot;Birthdate&quot; column is a template column and the date picker has 
            been placed into the &quot;EditItemTemplate&quot;. Then the &quot;CalendarDate&quot; property is 
            bound to the &quot;Birthdate&quot; field of the data source.</p>
        <p>
            <span style="font-size: 10pt; font-family: Courier New"><strong><span style="color: #0000ff">
                &lt;</span><span style="color: #990000">cc1</span><span style="color: #0000ff">:</span><span
                    style="color: #990000">DatePicker</span> <span style="color: #ff0000">ID</span><span style="color: #0000ff">="DatePicker1"</span> <span style="color: #ff0000">runat</span><span style="color: #0000ff">="server"</span> <span style="color: #ff0000">CalendarDate</span><span
                        style="color: #0000ff">='</span><span style="background-color: #ffff33">&lt;%<span
                            style="background-color: #ffffff"># Bind("Birthdate") </span>%&gt;</span><span style="color: #0000ff">'
                    /&gt;</span></strong></span></p>
        <p>
            <a href="Default.aspx">Back</a></p>
    </div>
    </form>
</body>
</html>
