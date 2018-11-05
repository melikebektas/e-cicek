<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsal/Bayi.Master" AutoEventWireup="true" CodeBehind="UrunEkle.aspx.cs" Inherits="AspCicekci.kurumsal.UrunEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="StyleSheet1.css" rel="stylesheet" />
    <p>
    <br />
</p>
    <table align="center" cellpadding="0" cellspacing="0" style="width: 100%; height: 315px;">
        <tr>
            <td style="height: 28px; width: 54px; color: #FFFFFF;">Cicek Ad:</td>
            <td style="height: 28px; width: 78px;">
                <asp:TextBox ID="txtcicekekle" runat="server" CssClass="oval" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcicekekle" Display="Dynamic" ErrorMessage="Ad Boş Geçilemez" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtad" Display="Dynamic" ErrorMessage="kullanıcı adını mail formatında giriniz" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 28px; width: 54px; color: #FFFFFF;">Kullanıcı Adı:</td>
            <td style="height: 28px; width: 78px;">
                <asp:TextBox ID="txtad" runat="server" CssClass="oval" Width="131px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtad" Display="Dynamic" ErrorMessage=" Kullanıcı Ad Boş Geçilemez" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 54px; color: #FFFFFF;">Cicek Boyu: </td>
            <td style="height: 25px; width: 78px;">
                <asp:TextBox ID="txtcicekboy" runat="server" CssClass="oval" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcicekboy" Display="Dynamic" ErrorMessage="Çiçek Özellikleri Boş Geçilemez" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 54px; color: #FFFFFF;">Cicegin Anlamı:</td>
            <td style="height: 25px; width: 78px;">
                <asp:TextBox ID="txttcicekanlam" runat="server" CssClass="oval" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txttcicekanlam" Display="Dynamic" ErrorMessage="Cicek Anlamı Boş Geçilemez" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 54px; color: #FFFFFF;">Stok Durumu: (adet)</td>
            <td style="height: 25px; width: 78px;">
                <asp:TextBox ID="txteklestok" runat="server" CssClass="oval" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txteklestok" Display="Dynamic" ErrorMessage="Stok Durumu Boş Geçilemez" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 54px; color: #FFFFFF;">Cicegin Fiyati:&nbsp;&nbsp; </td>
            <td style="height: 25px; width: 78px;">
                <asp:TextBox ID="txteklefiyat" runat="server" CssClass="oval" style="margin-bottom: 0px" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txteklefiyat" Display="Dynamic" ErrorMessage="Çiçek Fiyatı Boş Geçilemez" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 54px; color: #FFFFFF;">kategori:</td>
            <td style="height: 25px; width: 78px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="Kategori alanı boş geçilemez" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Çiçekler</asp:ListItem>
                    <asp:ListItem>Kişiye Özel</asp:ListItem>
                    <asp:ListItem>Yenilebilir Çiçekler</asp:ListItem>
                    <asp:ListItem>Butik Çiçekler</asp:ListItem>
                    <asp:ListItem>Meyve Sepeti</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 54px; color: #FFFFFF;">Cicegin Rengi:&nbsp;&nbsp;&nbsp;</td>
            <td style="height: 25px; width: 78px;">
                <asp:TextBox ID="txteklerenk" runat="server" CssClass="oval" style="margin-bottom: 0px" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txteklerenk" Display="Dynamic" ErrorMessage="0" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 54px; color: #FFFFFF;">Resim Ekle :&nbsp;</td>
            <td style="height: 25px; width: 78px">
                <asp:FileUpload ID="fileekle" runat="server" CssClass="oval" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 54px;">
                <asp:Button ID="Button1" runat="server" CssClass="oval" Height="48px" OnClick="Button1_Click" Text="Yukle" Width="106px" ForeColor="White" />
                
            </td>
            <td style="height: 25px; width: 78px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server"  DisplayMode="List" Height="77px" TabIndex="1" Width="355px" />
            </td>
        </tr>
    </table>
<p>
</p>
</asp:Content>
