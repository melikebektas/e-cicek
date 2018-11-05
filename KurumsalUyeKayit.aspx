<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="KurumsalUyeKayit.aspx.cs" Inherits="AspCicekci.KurumsalUyeKayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="sablon_stil.css" rel="stylesheet" />
      <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" CssClass="button button1" Text="Bireysel" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" CssClass="button button2" Text="Kurumsal" OnClick="Button2_Click" />
    </p>
    <table cellpadding="0" cellspacing="0" class="auto-style1">
        <tr>
            <td style="height: 35px">Kullan&#305;c&#305; Ad&#305;:</td>
            <td style="width: 212px; height: 35px;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width: 140px; height: 35px;">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Kullanıcı Adı Mail Formatında Olmalı" style="color: #660066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 212px" rowspan="12">
                <table cellpadding="0" cellspacing="0" style="width: 340px; height: 286px">
                    <tr>
                        <td colspan="2" style="text-align: left"><em>Neden Üye Olmalıyım?</em></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; text-align: left">
                    <img alt="" src="images/Hediye.png" style="height: 59px; width: 68px" /></td>
                        <td style="text-align: left"><asp:Label ID="Label4" runat="server" CssClass="auto-style14" Text="Hediye çeki f&#305;rsatlar&#305;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 18px; width: 90px; text-align: left">
                    <img alt="" src="images/sepet.png" style="height: 68px; width: 66px" /></td>
                        <td style="height: 18px; text-align: left"><asp:Label ID="Label3" runat="server" CssClass="auto-style11" Text="Kolay al&#305;&#351;veri&#351;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 90px; text-align: left">
                    <img class="auto-style7" src="images/kargoicon.png" style="height: 43px; width: 73px" /></td>
                        <td style="text-align: left"><asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="Kolay sipari&#351; takibi"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: left"> <em>
                    Ve daha fazlas&#305; için kay&#305;t ol</em></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&#350;ifre:</td>
            <td style="width: 212px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="width: 140px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&#350;ifre Tekrar:</td>
            <td style="width: 212px">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="width: 140px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>Kullan&#305;c&#305; Ad:</td>
            <td style="width: 212px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="width: 140px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>Kullan&#305;c&#305; Soyad:</td>
            <td style="width: 212px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td style="width: 140px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>Kurum Ad:</td>
            <td style="width: 212px">
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
            <td style="width: 140px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>Vergi Dairesi:</td>
            <tVergi Dairesi:</td>
            <td style="width: 212px">
                <asp:TextBox ID="TextBox7" runat="server" MaxLength="16" TextMode="Number"></asp:TextBox>
            </td>
            <td style="width: 140px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>Vergi Numaras&#305;:: 212px">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td style="width: 140px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>Telefon:</td>
            <td stylTelefon:</td>
            <td style="width: 212px">
                <asp:TextBox ID="TextBox9" runat="server" MaxLength="11" TextMode="Phone"></asp:TextBox>
            </td>
            <td style="width: 140px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 37px">Adres:t: 37px; width: 212px;">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td style="height: 37px; width: 140px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Üyelik sözle&#351;mesini okudum ve onayl&#305;yorum" />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server"  ForeColor="#0066CC" Target="_blank" NavigateUrl="~/uyelik_sözlesmesi.aspx">Üyelik sözle&#351;mesi için t&#305;klay&#305;n&#305;z</asp:HyperLink>
            </td>
            <td style="width: 140px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td style="width: 212px">
                <asp:Button ID="Button3" runat="server" CssClass="button button1" Text="Kay&#305;t Ol" OnClick="Button3_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td style="width: 140px">
                &nbsp;</td>
        </tr>
    </table>

    <p>
        &nbsp;</p>
</asp:Content>
