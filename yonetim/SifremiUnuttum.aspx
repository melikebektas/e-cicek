<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SifremiUnuttum.aspx.cs" Inherits="AspCicekci.yonetim.SifremiUnuttum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    


    <link href="css/stil2.css" rel="stylesheet" />
</head>
<body>
   
<div class="login">
	<h1>Şifremi Unuttum</h1>
    <form id="form1" runat="server">
        <asp:Label ID="Label2" runat="server" Text="Kullanıcı Adınızı Giriniz:" ForeColor="White"></asp:Label><br />
        <asp:TextBox class="input" ID="txtSifre" runat="server" Width="293px" ForeColor="Black" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSifre" ForeColor="White" ErrorMessage="*" ValidationGroup="Button1"></asp:RequiredFieldValidator>
            <asp:Button class="btn btn-primary btn-block btn-large" ID="Button1" runat="server" Text="Gönder"  Width="297px" OnClick="Button1_Click"  />
            
        
            
        <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" Width="40px" ImageUrl="images/back.png" OnClick="ImageButton1_Click"  />
            
        
            
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
    </form>
</div>
    
    
</body>
</html>
