<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AspCicekci.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style1.css" rel="stylesheet" />
    <link href="sablon_stil.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 669px;
            width: 1201px;
        }
        .auto-style4 {
            height: 14px;
            text-align: center;
        }
        .auto-style6 {
            height: 14px;
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style8 {
            height: 15px;
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style10 {
            width: 1199px;
            margin: auto;
        }
        .auto-style12 {
            height: 15px;
            color: #000066;
            text-align: center;
            font-size: xx-large;
        }
        .auto-style13 {
            border: 2px none darkblue;
            border-radius: 40px;
            width: 437px;
            height: 342px;
            position: absolute;
            top: 122px;
            left: 422px;
            z-index: 1;
        }
        .newStyle1 {
            font-family: Chiller;
        }
        .newStyle2 {
            font-family: Chiller;
        }
        .newStyle3 {
            font-family: Chiller;
        }
        .newStyle4 {
            font-family: "Viner Hand ITC";
        }
        .newStyle5 {
            font-family: "Tekton Pro Ext";
        }
        .newStyle6 {
            font-family: Vivaldi;
            color: #660033;
        }
        .newStyle7 {
            color: #660033;
            font-family: vivaldi;
        }
        .auto-style14 {
            margin-bottom: 0px;
        }

        .auto-style15 {
            color: #660058;
            font-size: large;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style10" style="background-image: none; background-repeat: no-repeat">
    <div class="auto-style1">
        <table align="center" cellpadding="0" cellspacing="0" class="auto-style13">
        <tr>
            <td class="auto-style12">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/follower-user-man-login-128.png" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><span class="newStyle6">Kullan&#305;c&#305; Ad&#305;:</span></td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Height="35px" Width="151px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Kullanıcı Adı Mail Formatında Olmalı" style="color: #660066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><span class="newStyle7">Sifre:</span></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="143px" CssClass="textbox" Height="37px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="button button1" Text="Giriş Yap" Height="53px" Width="139px" OnClick="Button1_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server"  CssClass="button button1" Text="Kayıt Ol" Width="138px" Height="54px" OnClick="Button2_Click" />
                </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                <strong><em>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style15" NavigateUrl="~/MailGonder.aspx">Şifremi Unuttum...</asp:HyperLink>
                </em></strong>
                <br />
                </td>
        </tr>
    </table>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="43px" ImageUrl="~/images/gerioku1.png" OnClick="ImageButton1_Click" Width="52px" CssClass="auto-style14" />
    </div>
    </div>
    </form>
</body>
</html>
