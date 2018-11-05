<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsal/Bayi.Master" AutoEventWireup="true" CodeBehind="UrunDuzenle.aspx.cs" Inherits="AspCicekci.kurumsal.UrunDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="StyleSheet1.css" rel="stylesheet" />
    <br />
<p>
    &nbsp;</p>
    <p style="height: 38px">
        <table cellpadding="0" cellspacing="0" style="width: 100%; height: 64px">
            <tr>
                <td style="height: 49px; width: 246px">
                    <asp:Label ID="Label11" runat="server" Text="Aradığınız Çiçeği Giriniz :" style="color: #FFFFFF"></asp:Label>
                </td>
                <td style="height: 49px">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="oval"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Mail Formatı ile Giriniz" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox3" ErrorMessage="Boş Geçilmez">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 246px">
                    <asp:Label ID="Label12" runat="server" Text="Kullanıcı Adınızı Giriniz" style="color: #FFFFFF"></asp:Label>
                    <span style="color: #FFFFFF">:</span></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="oval"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox4" ErrorMessage="Boş Bırakılmaz">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    <br />
</p>
    <p>
        &nbsp;</p>
    <table align="center" cellpadding="0" cellspacing="0" style="width: 100%; height: 221px; margin-bottom: 6px;">
        <tr>
            <td style="width: 187px; color: #FFFFFF;">Ciçek Adı:</td>
            <td>
                <asp:TextBox ID="txtcicekad" runat="server" CssClass="oval"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Çiçek Adı Boş Geçilemez" ControlToValidate="txtcicekad" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px; color: #FFFFFF;">Kategori:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Yenilebilir Çiçekler</asp:ListItem>
                    <asp:ListItem>Çiçekler</asp:ListItem>
                    <asp:ListItem>Butik Çiçekler</asp:ListItem>
                    <asp:ListItem>Meyve Sepeti</asp:ListItem>
                    <asp:ListItem>Kişiye Özel Tasarımlar</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Kategori Boş Geçilemez" ControlToValidate="DropDownList1" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px; color: #FFFFFF;">Çiçeğin Rengi:</td>
            <td>
                <asp:TextBox ID="txtrenk" runat="server" CssClass="oval"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtrenk" Display="Dynamic" ErrorMessage="Renk alanı boş geçilemez" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px; color: #FFFFFF;">Çiçeğin Boyu:</td>
            <td>
                <asp:TextBox ID="txtboy" runat="server" CssClass="oval"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtboy" Display="Dynamic" ErrorMessage="boy alanı bos gecilemez" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px; color: #FFFFFF;">Çiçeğin Anlamı:</td>
            <td>
                <asp:TextBox ID="txtanlam" runat="server" CssClass="oval"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" Display="Dynamic" ErrorMessage="Çiçek Anlamı boş gecilemez" ForeColor="Red" ControlToValidate="txtanlam">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px; color: #FFFFFF;">Stok Durumu:</td>
            <td>
                <asp:TextBox ID="txtstok" runat="server" CssClass="oval"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Stok bilgisi boş geçilemez" ControlToValidate="txtstok" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 29px; width: 187px; color: #FFFFFF;">Çiçeğin Fiyatı:</td>
            <td style="height: 29px">
                <asp:TextBox ID="txtfiyat" runat="server" CssClass="oval"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Fiyat boş geçilemez" ControlToValidate="txtfiyat" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px; height: 25px; color: #FFFFFF;">Çiçeğin Resmi:</td>
            <td style="height: 25px">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="oval" ForeColor="White" />
            </td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" CssClass="oval" OnClick="Button1_Click1" Text="Yukle" ForeColor="White" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    <br />
    <br />
    <br />
<br />

</asp:Content>
