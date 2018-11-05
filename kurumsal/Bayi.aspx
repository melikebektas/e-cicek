<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsal/Bayi.Master" AutoEventWireup="true" CodeBehind="Bayi.aspx.cs" Inherits="AspCicekci.kurumsal.Bayi1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <link href="StyleSheet1.css" rel="stylesheet" />

<p>
    &nbsp;</p>
    <asp:Button ID="btnfrofilgoruntule" runat="server"  CssClass="oval"  OnClick="Button4_Click1" Text="Profil Goruntule" style="z-index: 1; position: absolute; top: 450px; left: 709px; width: 154px; height: 45px" />
<p>
    &nbsp;</p>
    <asp:ListBox ID="ListBox1" runat="server" CssClass="oval" Height="186px" style="z-index: 1; position: absolute; top: 249px; left: 587px; width: 564px"></asp:ListBox>
        <em>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; position: absolute; top: 208px; left: 1291px; color: #FF9933;"></asp:Label>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; position: absolute; top: 254px; left: 1240px; color: #FF9933;"></asp:Label>
    </em>
<p>
        &nbsp;</p>&nbsp;<p>
&nbsp;
        </p>
    <p>
        &nbsp;</p>
    <asp:Button ID="Button1" runat="server" CssClass="oval" OnClick="Button1_Click1" style="z-index: 1; position: absolute; top: 447px; left: 1080px; width: 156px; height: 48px" Text="Duzenlemeden Cık" />
    <p>
        &nbsp;</p>
        <table id="table1" align="center" cellpadding="0" cellspacing="0" style="width: 79%; height: 357px;">
            <tr>
                <td style="width: 204px">
                    <asp:Label ID="Label10" runat="server" Text="Kullanıcı Adı:" style="color: #FFFFFF"></asp:Label>
                    <span style="color: #FFFFFF">&nbsp;&nbsp;&nbsp;</span>&nbsp; </td>
                <td>
                    <asp:TextBox ID="txtk_ad" runat="server" CssClass="oval" Height="25px" Width="129px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtk_ad" Display="Dynamic" ErrorMessage="Kullanıcı adı boş geçilemez" ForeColor="#CC0000" ValidationGroup="btnonayla">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtk_ad" Display="Dynamic" ErrorMessage="kullanıcı adını mail formatında giriniz" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 26px; width: 204px">
                    <asp:Label ID="Label11" runat="server" Text="Şifre:" style="color: #FFFFFF"></asp:Label>
                    <span style="color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </td>
                <td style="height: 26px">
                    <asp:TextBox ID="txtsifre" runat="server" CssClass="oval" Height="25px" Width="129px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsifre" Display="Dynamic" ErrorMessage="Sifre boş geçilemez" ForeColor="#CC0000" ValidationGroup="btnonayla">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 26px; width: 204px">
                    <asp:Label ID="Label13" runat="server" Text="Şifre Tekrar:" style="color: #FFFFFF"></asp:Label>
                </td>
                <td style="height: 26px">
                    <asp:TextBox ID="TextBox10" runat="server" CssClass="oval" Height="25px" Width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox10" Display="Dynamic" ErrorMessage="Sifre Tekrar boş geçilemez" ForeColor="#CC0000" ValidationGroup="btnonayla">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtsifre" ControlToValidate="TextBox10" Display="Dynamic" ErrorMessage="Şifreler aynı olmalı" ForeColor="Black">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 204px">
                    <asp:Label ID="Label14" runat="server" Text="Ad:" style="color: #FFFFFF"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_ad" runat="server" CssClass="oval" Height="25px" Width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_ad" Display="Dynamic" ErrorMessage="Ad boş geçilemez" ForeColor="#CC0000" ValidationGroup="btnonayla">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 204px">
                    <asp:Label ID="Label4" runat="server" Text="Soyad:" style="color: #FFFFFF"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtsoyad" runat="server" CssClass="oval" Height="25px" Width="129px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtsoyad" Display="Dynamic" ErrorMessage="Soyad boş geçilemez" ForeColor="#CC0000" ValidationGroup="btnonayla">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 204px">
                    <asp:Label ID="Label5" runat="server" Text="Kurum Adı:" style="color: #FFFFFF"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtkurum_ad" runat="server" CssClass="oval" Height="25px" Width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtkurum_ad" Display="Dynamic" ErrorMessage="Kurum Adı boş geçilemez" ForeColor="#CC0000" ValidationGroup="btnonayla">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 204px">
                    <asp:Label ID="Label6" runat="server"  Text="Vergi Dairesi:" style="color: #FFFFFF"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtvergi_d" runat="server" CssClass="oval" Height="25px" Width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtvergi_d" Display="Dynamic" ErrorMessage="Vergi Dairesi boş geçilemez" ForeColor="#CC0000" ValidationGroup="btnonayla">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 204px">
                    <asp:Label ID="Label7" runat="server" CssClass="oval" Text="Vergi Numarası:" style="color: #FFFFFF"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtvergi_num" runat="server"  CssClass="oval" Height="25px" Width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtvergi_num" Display="Dynamic" ErrorMessage="Vergi Numarası boş geçilemez" ForeColor="#CC0000" ValidationGroup="btnonayla">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 22px; width: 204px;">
                    <asp:Label ID="Label8" runat="server" Text="Telefon:" style="color: #FFFFFF"></asp:Label>
                </td>
                <td style="height: 22px">
                    <asp:TextBox ID="txt_tel" runat="server"  CssClass="oval" Height="25px" Width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_tel" Display="Dynamic" ErrorMessage="Telefon boş geçilemez" ForeColor="#CC0000" ValidationGroup="btnonayla">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 204px">
                    <asp:Label ID="Label9" runat="server" Text="Adres:" style="color: #FFFFFF"></asp:Label>
                    <span style="color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </td>
                <td>
                    <asp:TextBox ID="txtadres" runat="server"  CssClass="oval" Height="25px" Width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txt_ad" Display="Dynamic" ErrorMessage="Adres boş geçilemez" ForeColor="#CC0000" ValidationGroup="btnonayla">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <em>
                    <asp:Label ID="Label15" runat="server" style="z-index: 1; position: absolute; top: 254px; left: 1327px; height: 37px; color: #FF9933;"></asp:Label>
                    </em>
                    <asp:Button ID="btnonayla" runat="server"  CssClass="oval" OnClick="Button3_Click" style="z-index: 1; position: absolute; top: 558px; left: 627px; right: 738px; height: 64px;" Text="onayla" />
                    <br />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
            </tr>
        </table>
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="btnprofilduzenle" runat="server" CssClass="oval" OnClick="Button2_Click" style="z-index: 1; position: absolute; top: 449px; left: 891px; height: 49px; width: 170px;" Text="profil Duzenle" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
<p>
</p>
<p>
</p>
</asp:Content>
