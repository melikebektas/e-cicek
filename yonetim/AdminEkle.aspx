<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEkle.aspx.cs" Inherits="AspCicekci.yonetim.AdminEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/stil2.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <table style="border: thin solid #2A595A; width: 866px; height: 352px;">
        <tr>
            <td style="height: 43px">
                <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>  
                <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label><br /><br />
               <br /> <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı:" ForeColor="White"></asp:Label>
                <br />
                <asp:TextBox ID="txtKullaniciAdi" runat="server" Width="270px" ForeColor="Black"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" style="z-index: 1; position: absolute; top: 135px; left: 1194px"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKullaniciAdi" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td style="height: 50px">
                <asp:Label ID="Label2" runat="server" Text="Şifre:" ForeColor="White"></asp:Label><br />
                <asp:TextBox ID="txtSifre" runat="server" Width="270px" ForeColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSifre" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td style="height: 50px">
                <asp:Label ID="Label3" runat="server" Text="Şifre Tekrar:" ForeColor="White"></asp:Label><br />
                <asp:TextBox ID="TextBox3" runat="server" Width="270px" ForeColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSifre" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Şifreler aynı olmalı" ForeColor="White"></asp:CompareValidator>
            </td>
            
        </tr>
         <tr>
            <td style="height: 50px">
                <asp:Label ID="Label4" runat="server" Text="Ad:" ForeColor="White"></asp:Label><br />
                <asp:TextBox ID="txtAd" runat="server" Width="270px" ForeColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAd" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
         <tr>
            <td style="height: 63px">
                <asp:Label ID="Label5" runat="server" Text="Soyad:" ForeColor="White"></asp:Label><br />
                <asp:TextBox ID="txtSoyad" runat="server" Width="270px" ForeColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSoyad" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
         <tr>
            <td>
                <asp:Button ID="Button1" runat="server"  Text="Ekle" Width="271px"  ForeColor="Black" OnClick="Button1_Click"  />
                <br />
            </td>
            
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
