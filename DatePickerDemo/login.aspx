<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DatePickerDemo.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
<table width="1003" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1" bgcolor="#ffffff"></td>
  </tr>
  <tr>
    <td height="8" bgcolor="#F66D05">
        <br />
        <br />
        <br />
        <br />
      </td>
  </tr>
  <tr><td height="1" bgcolor="#ffffff"></td></tr>
  <tr>
    <td valign="top"><table width="903" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="900" valign="top" bgcolor="#ffffff"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="1" bgcolor="#E0E0E0"></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td class="head2">Customer Login</td>
          </tr>
          <tr>
            <td id="main">
              <p align="center">
              
              <table border="1" class="style1">
                    <tr>
                        <td align="center" class="style2" colspan="2">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="User Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style3">
                            <asp:Button ID="Button1" runat="server" Text="Sign IN" 
                                onclick="Button1_Click" />
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">New User? SignUp</asp:LinkButton>
                            <asp:SqlDataSource ID="SqlDataSource" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:databaseConnectionString %>" 
                                SelectCommand="SELECT * FROM [buyer]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
              </p>
                                    </td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
     <td height="8" bgcolor="#F66D05">
         <br />
         <br />
         <br />
         <br />
         <br />
      </td>
  </tr>
  </table>
</form>
</body>
</html>



