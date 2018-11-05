<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="yorumOnayla.aspx.cs" Inherits="AspCicekci.yonetim.yorumOnayla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table style="width: 100%; height: 36px;">
        <tr>
            <td style="text-align: right; width: 177px;">Gönderen Kişi:</td>
            <td>
                <asp:TextBox ID="txt_kisi" runat="server" Width="200px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="text-align: right; width: 177px;">Yorum:</td>
            <td>
                <asp:TextBox ID="txt_yorum" runat="server" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 177px;">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 177px;">
                <asp:Button ID="btnGeri" runat="server" Text="Geri"  Width="68px" Height="26px" OnClick="btnGeri_Click" />
            </td>
            <td>
                <asp:Button ID="btnGuncelle" runat="server"  Text="Güncelle" OnClick="btnGuncelle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
