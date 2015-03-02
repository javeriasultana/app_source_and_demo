<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="DatePickerDemo.register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
<table width="1003" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#F66D05" class="style1">
        <br />
        <br />
      </td>
  </tr>
  <tr>
    <td id="links-bg"><table border="0" align="center" cellpadding="0" cellspacing="0">
      </table></td>
  </tr>
  <tr>
    <td valign="top"><table width="903" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="900" valign="top" bgcolor="#ffffff"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td id="main">
              <p>
              <table align="center" border="1" class="style1" frame="box">
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Enter User Name" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Enter Password" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label4" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="Enter First Name" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label5" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="Enter Last Name" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="128px"></asp:TextBox>
&nbsp;&nbsp;

                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="addr" AutoPostBack="True"
                            oncheckedchanged="RadioButton3_CheckedChanged" Text="Home" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="addr" 
                            oncheckedchanged="RadioButton4_CheckedChanged" Text="Office" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="Enter Address" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" 
                            Text="Male" oncheckedchanged="RadioButton1_CheckedChanged" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Female" 
                            oncheckedchanged="RadioButton2_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label8" runat="server" Text="Mobile Number"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox6" runat="server" MaxLength="10"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="Enter Mobile Number" 
                            Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label9" runat="server" Text="Email ID"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="TextBox7" ErrorMessage="Enter Email ID" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style3" colspan="2">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:databaseConnectionString %>" 
                            SelectCommand="SELECT * FROM [buyer]"></asp:SqlDataSource>
                        <asp:Button ID="Button1" runat="server" Text="Register" 
                            onclick="Button1_Click" />
                    </td>
                </tr>
            </table>
              
              </p>
                                    </td>
          </tr>
        </table>
          </td>
      </tr>
    </table></td>
  </tr>
  <tr>
     <td height="8" bgcolor="#F66D05">
         <br />
         <br />
      </td>
  </tr>
  </table>
</form>
</body>
</html>
