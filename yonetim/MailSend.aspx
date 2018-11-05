<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MailSend.aspx.cs" Inherits="AspCicekci.yonetim.MailSend" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
    <div style="margin: 20px; height: 600px; width: 1113px">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/back.png" Height="32px" OnClick="ImageButton1_Click" /> <div style="margin-left: 280px"> <asp:Label ID="Label1" runat="server" Text="Mail Gönder" Font-Bold="True" Font-Overline="False" Font-Size="Larger" ></asp:Label></div>     <asp:Panel ID="pnl_Mail" runat="server" BackColor="#F8F8F8" ForeColor="White">
        <table style="width: 43%; height: 541px; margin-left: 280px;">
        <tr>
            <td style="text-align: left; ">
                <asp:Label ID="Label6" runat="server" Text="Sipariş Kodu:" ForeColor="Black"></asp:Label>
            </td>
            <td style="height: 36px">
                <asp:Label ID="lbl_sipariskodu" runat="server" ForeColor="Black" Text="Label"></asp:Label>
            </td>
            
        </tr>
           <tr>
            <td style="text-align: left; ">
                <asp:Label ID="Label7" runat="server" Text="Mail Adresi:" ForeColor="Black"></asp:Label>
               </td>
            <td style="height: 36px">
                <asp:Label ID="lblmailadresi" runat="server" ForeColor="Black" Text="Label"></asp:Label>
            </td>
            </tr>
            <tr>
            
            
            
                <td style="text-align: left; ">
                    <asp:Label ID="Label9" runat="server" ForeColor="Black" Text="Teslimat Zamanı:"></asp:Label>
                </td>
                <td style="height: 35px">
                    <asp:Label ID="lblTeslimatZamani" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                </td>
            <tr>
                <td style="text-align: left; ">
                    <asp:Label ID="Label10" runat="server" ForeColor="Black" Text="Teslimat Kişi:"></asp:Label>
                </td>
                <td style="height: 36px">
                    <asp:Label ID="lblkisi" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: left; ">
                    <asp:Label ID="Label11" runat="server" ForeColor="Black" Text="Teslimat Telefonu:"></asp:Label>
                </td>
                <td style="height: 36px">
                    <asp:Label ID="lbltelefon" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: left; ">
                    <asp:Label ID="Label12" runat="server" ForeColor="Black" Text="Toplam Fiyat:"></asp:Label>
                </td>
                <td style="height: 36px">
                    <asp:Label ID="lblfiyat" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: left; ">
                    <asp:Label ID="Label14" runat="server" ForeColor="Black" Text="Kargo Durumu:"></asp:Label>
                </td>
                <td style="height: 49px">
                    <asp:Label ID="lblkargo" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: left; ">
                    <asp:Label ID="Label15" runat="server" ForeColor="Black" Text="Mesaj:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblyorum" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">&nbsp;</td>
                <td>
                    <asp:Button ID="btnMail" runat="server" ForeColor="Black" Height="30px" OnClick="btnMail_Click" Text="Mail Gönder" Width="200px" />
                </td>
            </tr>
                </table>

            </asp:Panel>
    
    </div>
    </form>
</body>
</html>
