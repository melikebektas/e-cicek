<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="OdemeSayfas&#305;.aspx.cs" Inherits="AspCicekci.OdemeSayfas&#305;" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </p>
    <table align="left" cellpadding="0" cellspacing="0" style="width: 637px; height: 349px">
        <tr>
            <td style="width: 173px">Ödenecek Tutar : </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 173px">Kart Numaras&#305;:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" MaxLength="16" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Lütfen kart numaras&#305;n&#305; griniz" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 173px">
                <br />
                SKT :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="SKT  alan&#305; bo&#351; geçilemez" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 173px">CVV :</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" MaxLength="3" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="CVV alan&#305; bo&#351; geçilemez" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button1" runat="server" CssClass="button button1" OnClick="Button1_Click" Text="Gönder" />
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default.aspx">Anasayfaya Dön</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <br />
            </td>
        </tr>
    </table>
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
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>
