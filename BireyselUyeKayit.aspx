<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="BireyselUyeKayit.aspx.cs" Inherits="AspCicekci.BireyselUyeKayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="sablon_stil.css" rel="stylesheet" />
   <table cellpadding="0" cellspacing="0" class="auto-style1" style="width: 529px">
        <tr>
            <td class="auto-style1" style="text-align: left"><asp:Button ID="Button1" runat="server" CssClass="button button1" Text="Bireysel" OnClick="Button1_Click" Width="180px" />
            </td>
            <td class="auto-style1" style="text-align: left; width: 132px">
               <asp:Button ID="Button2" runat="server" CssClass="button button2" Text="Kurumsal" OnClick="Button2_Click" Width="191px" />  </td>
            <td class="auto-style1" style="text-align: left">&nbsp;</td>
            <td class="auto-style1" style="text-align: left" rowspan="10">
                <table align="right" cellpadding="0" cellspacing="0" style="width: 340px; height: 286px">
                    <tr>
                        <td colspan="2"><em>Neden Üye Olmal&#305;y&#305;m?</em></td>
                    </tr>
                    <tr>
                        <td style="width: 90px">
                    <img alt="" src="images/Hediye.png" style="height: 59px; width: 68px" /></td>
                        <td><asp:Label ID="Label4" runat="server" CssClass="auto-style14" Text="Hediye çeki f&#305;rsatlar&#305;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 18px; width: 90px">
                    <img alt="" src="images/sepet.png" style="height: 68px; width: 66px" /></td>
                        <td style="height: 18px"><asp:Label ID="Label3" runat="server" CssClass="auto-style11" Text="Kolay al&#305;&#351;veri&#351;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 90px">
                    <img class="auto-style7" src="images/kargoicon.png" style="height: 43px; width: 73px" /></td>
                        <td><asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="Kolay sipari&#351; takibi"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"> <em>
                    Ve daha fazlas&#305; için kay&#305;t ol</em></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 163px; height: 33px">Kullan&#305;c&#305; Ad&#305;:
            <td class="auto-style6" style="height: 33px; width: 132px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6" style="height: 33px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Kullan&#305;c&#305; Ad&#305; Mail Format&#305;nda Olmal&#305;" style="color: #660066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px">&#350;ifre:</td>
            <td class="auto-style14" style="width: 132px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 27px; width: 163px;">&#350;ifre Tekrar:</td>
            <td class="auto-style9" style="height: 27px; width: 132px;">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style9" style="height: 27px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 163px">Ad:</td>
            <td class="auto-style14" style="width: 132px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 163px">Soyad:</td>
            <td style="width: 132px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 163px">Adres:</td>
            <td style="width: 132px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 163px">Telefon:</td>
            <td class="auto-style14" style="width: 132px">
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Phone" MaxLength="11"></asp:TextBox>
            </td>
            <td class="auto-style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style26">
                <asp:CheckBox ID="CheckBox1" runat="server"  Text="Üyelik sözle&#351;mesini okudum ve onayl&#305;yorum" />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server"  ForeColor="#0066CC" Target="_blank" NavigateUrl="~/uyelik_sözlesmesi.aspx">Üyelik sözle&#351;mesi için t&#305;klay&#305;n&#305;z</asp:HyperLink>
            </td>
            <td class="auto-style26">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="width: 163px">&nbsp;</td>
            <td class="auto-style14" style="width: 132px">
                <asp:Button ID="Button3" runat="server" CssClass="button button1" Text="Kay&#305;t Ol" OnClick="Button3_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
            </td>
            <td class="auto-style14">
                &nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    
</asp:Content>
