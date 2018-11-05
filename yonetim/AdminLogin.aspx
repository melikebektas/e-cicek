<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="AspCicekci.yonetim.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    


    <link href="css/stil2.css" rel="stylesheet" />
</head>
<body>
   
<div class="login">
    <form id="form1" runat="server">
	<h1>Admin Giriş</h1>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı:" ForeColor="White"></asp:Label><br />
        <asp:TextBox class="input" ID="txtKullaniciAdi" runat="server" Width="292px" ForeColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKullaniciAdi" ForeColor="White" ErrorMessage="*" Font-Bold="False" Font-Size="Smaller" ValidationGroup="Button1"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Şifre:" ForeColor="White"></asp:Label><br />
        <asp:TextBox class="input" ID="txtSifre" runat="server" Width="292px" ForeColor="Black" TextMode="Password" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSifre" ForeColor="White" ErrorMessage="*" Font-Size="Smaller" ValidationGroup="Button1"></asp:RequiredFieldValidator>
            <asp:Button class="btn btn-primary btn-block btn-large" ID="Button1" runat="server" Text="Giriş" Width="292px" OnClick="Button1_Click"   />
            
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/adminekle.png" Width="45px" OnClick="ImageButton1_Click" />
            
            <br />
        <div class="foot-lnk">
                    <a href="SifremiUnuttum.aspx" style="color: #FFFFFF">Şifremi Unuttum</a><br />
            <br />

                    

                    <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="White"></asp:Label>
                </div>
    </form>
</div>
    
    <p>
        &nbsp;</p>
</body>
</html>
