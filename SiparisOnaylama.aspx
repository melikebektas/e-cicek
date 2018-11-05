<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="SiparisOnaylama.aspx.cs" Inherits="AspCicekci.SiparisOnaylama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellpadding="0" cellspacing="0" style="width: 517px; height: 654px">
        <tr>
            <td style="width: 210px">Çiçe&#287;in Ad&#305;:</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">Toplam Fiyat:</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 44px; width: 210px">Al&#305;c&#305;n&#305;n Ad&#305; ve Soyad&#305;:</td>
            <td style="height: 44px">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">Gönderilme Tarihi:</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">Gönderilme Saati:</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">Telefon:</td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 76px; width: 210px">Adres:</td>
            <td style="height: 76px">
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">Al&#305;c&#305;ya Not:</td>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button3" runat="server" Height="72px" Text="Sipari&#351;i Ver" Width="158px" CssClass="button button1" OnClick="Button3_Click"  />
                <asp:Button ID="Button4" runat="server" Height="72px" Text="Düzelt" Width="135px" CssClass="button button1" />
                <asp:Button ID="Button5" runat="server" Height="73px" Text="&#304;ptal" Width="125px" CssClass="button button1" />
                <br />
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
