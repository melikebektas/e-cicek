<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDuzenle.aspx.cs" Inherits="AspCicekci.yonetim.AdminDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <table style="border: thin solid #2A595A; width: 866px; height: 352px;">
        <tr>
            <td style="height: 43px">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>  
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label><br /><br />
               <br /> <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı:"></asp:Label>
                <br />
                <asp:TextBox ID="txtKullaniciAdi" runat="server" Width="270px"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" style="z-index: 1; position: absolute; top: 135px; left: 1194px"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKullaniciAdi" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td style="height: 50px">
                <asp:Label ID="Label2" runat="server" Text="Şifre:"></asp:Label><br />
                <asp:TextBox ID="txtSifre" runat="server" Width="270px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSifre" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td style="height: 50px">
                <asp:Label ID="Label3" runat="server" Text="Şifre Tekrar:"></asp:Label><br />
                <asp:TextBox ID="TextBox3" runat="server" Width="270px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSifre" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Şifreler aynı olmalı" ForeColor="Black"></asp:CompareValidator>
            </td>
            
        </tr>
         <tr>
            <td style="height: 50px">
                <asp:Label ID="Label4" runat="server" Text="Ad:"></asp:Label><br />
                <asp:TextBox ID="txtAd" runat="server" Width="270px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAd" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
         <tr>
            <td style="height: 63px">
                <asp:Label ID="Label5" runat="server" Text="Soyad:"></asp:Label><br />
                <asp:TextBox ID="txtSoyad" runat="server" Width="270px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSoyad" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
         <tr>
            <td>
                <asp:Button ID="Button1" runat="server"  Text="Güncelle" Width="159px" OnClick="Button1_Click"  />
                <br />
            </td>
            
        </tr>
    </table>
    
</asp:Content>
