<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="MisafirKargoTakibi.aspx.cs" Inherits="AspCicekci.MisafirKargoTakibi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style>
     .textbox{

    border-radius:40px;
}
       .auto-style10 {
           width: 531px;
           height: 422px;
       }
       .auto-style11 {
           width: 288px;
       }
       .auto-style12 {
           color: #FFFFFF;
           position: absolute;
           top: 159px;
           left: 624px;
           z-index: 1;
           width: 288px;
       }
   </style>
            <p>
                <br />
            </p>
            <p style="color: #5C3664">
                <strong>Sipari&#351; bilgilerinizi görüntülemek için sipari&#351; kodunuzu giriniz.</strong></p>
            <table align="left" cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td style="color: #5C3664"><strong>Sipari&#351; Kodu:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" CssClass="button button1" Text="Görüntüle" Height="55px" style="margin-left: 6px" Width="197px" OnClick="Button1_Click" />
            <br />
            <br />
           
            <br />
            <table align="center" cellpadding="0" cellspacing="0" class="auto-style10">
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label1" runat="server" Text="Mail:" style="color: #86617F; font-size: x-large"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label9" runat="server" style="font-size: large; color: #437376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label2" runat="server" Text="Teslimat Adresi:" style="color: #8B5A82; font-size: x-large"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label10" runat="server" style="font-size: large; color: #437376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Teslimat Zaman&#305;" style="font-size: x-large; color: #875E72"></asp:Label>
                        <span>:</span></td>
                    <td>
                        <asp:Label ID="Label11" runat="server" style="font-size: large; color: #437376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label4" runat="server" Text="Teslimat Notu:" style="font-size: x-large; color: #875E73"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label12" runat="server" style="font-size: large; color: #437376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label5" runat="server" Text="Teslim Alan Ki&#351;i:" style="font-size: x-large; color: #895E7F"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label13" runat="server" style="font-size: large; color: #437376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label6" runat="server" Text="Teslimat Telefonu:" style="font-size: x-large; color: #885E81"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label14" runat="server" style="font-size: large; color: #437376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label7" runat="server" Text="Fiyat:" style="font-size: x-large; color: #8B5D80"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label15" runat="server" style="font-size: large; color: #437376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label8" runat="server" Text="Kargo Durumu:" style="color: #944E87; font-size: x-large"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label16" runat="server" style="color: #437376; font-size: large"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
           
</asp:Content>
