<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="KargoTakibi.aspx.cs" Inherits="AspCicekci.KargoTakibi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>
     .textbox{

    border-radius:40px;
}</style>

    <p>
        &nbsp;</p>
        <table align="left" cellpadding="0" cellspacing="0" style="width: 355px; height: 388px">
        <tr>
            <td style="width: 297px; text-align: center">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/follower-user-man-login-128.png" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="width: 297px; text-align: center"><span style="color: #5C3664"><strong>Kullan&#305;c&#305; Ad&#305;:</strong></span></td>
        </tr>
        <tr>
            <td style="width: 297px; text-align: center; height: 51px">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Height="23px" Width="151px" style="margin-top: 0"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 297px; text-align: center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Kullan&#305;c&#305; Ad&#305; Mail Format&#305;nda Olmal&#305;" style="color: #660066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="width: 297px; text-align: center"><span style="color: #5C3664"><strong>Sifre:</strong></span></td>
        </tr>
        <tr>
            <td style="width: 297px; left: 0px; top: 264px; height: 46px; text-align: center">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="151px" CssClass="textbox" Height="24px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 297px; text-align: center;">
                <br />
                <asp:Button ID="Button3" runat="server" CssClass="button button1" Text="Giri&#351; Yap" Height="53px" Width="139px" OnClick="Button1_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" CssClass="button button1" Height="52px" OnClick="Button4_Click" Text="Kay&#305;t Ol" Width="136px" />
                </td>
        </tr>
    </table>
        <p>
            &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/images/araçubuk.png" style="position: relative; left: 36px; top: -38px; height: 360px" />
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" CssClass="button button2" OnClick="Button2_Click" Text="Misafir Olarak Devam Et" Width="307px" style="position: relative; left: 462px; top: -287px; height: 68px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <p style="text-align: center">
&nbsp;
        </p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    



</asp:Content>
