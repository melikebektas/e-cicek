<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BayiGiris.aspx.cs" Inherits="AspCicekci.kurumsal.BayiGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="sablon_stil.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style2 {
            height: 135px;
        }
        .auto-style5 {
            width: 188px;
            height: 36px;
            color: #FFFFFF;
        }
        .auto-style6 {
            height: 36px;
        }
        .auto-style7 {
            width: 188px;
            height: 34px;
            color: #FFFFFF;
        }
        .auto-style8 {
            height: 34px;
        }
        .oval {
            border-radius:8px 8px;
        }
        .div{
      
  width: 600px;
    height: 400px;
    padding: 80px;
    top: 100%;
    left: 100%;
  border:0px;
        }
        .auto-style10 {
            height: 231px;
        }
        .auto-style11 {
            position: absolute;
            top: 389px;
            left: 657px;
            z-index: 1;
        }
        .auto-style12 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center"  cellpadding="0" cellspacing="0" border:"0"  CssClass="oval" class="div">
            <tr>
                <td class="auto-style2" colspan="2" style="color: #000000; background-color: #FF0066;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style12">KURUMSAL LOGİN&nbsp;</span></td>
            </tr>
            <tr>
                <td class="auto-style5">Kullanıcı Adı(mail):</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="oval"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="kullanıcı adını mail formatında giriniz" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Kullanıcı adı boş geçilemez" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Sifre:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="oval" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Kullanıcı adı boş geçilemez" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="color: #FFFFFF" class="auto-style10">
                    <asp:Button ID="Button1" runat="server" BackColor="#FF0066" CssClass="button button1" OnClick="Button1_Click" style="z-index: 1; position: absolute; top: 326px; left: 653px; width: 132px; height: 53px" Text="ONAYLA" ForeColor="White" />
                    
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style11" NavigateUrl="~/kurumsal/SifremiUnuttum.aspx" Target="_blank" BackColor="Lime">sifremi unuttum</asp:HyperLink>
                    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
