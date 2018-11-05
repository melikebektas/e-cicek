<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="UyelikBilgileri.aspx.cs" Inherits="AspCicekci.UyelikBilgileri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
     .textbox{

    border-radius:40px;
}</style>
      <p>
           <br />
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
           <br />                

    </p>
    <p>
           &nbsp;</p>
    <p>
           <asp:Button ID="Button1" runat="server" CssClass="button button1" Text="Üyelik Bilgilerim" Height="69px" Width="236px" OnClick="Button1_Click" />
    </p>
    <p>
           <asp:Button ID="Button2" runat="server" CssClass="button button1" Text="&#350;ifre De&#287;i&#351;tir" Height="63px" Width="235px" OnClick="Button2_Click" />
    </p>
    <p>
           <asp:Button ID="Button4" runat="server" CssClass="button button1" Text="Sipari&#351; Takibi" Height="65px" OnClick="Button4_Click" Width="233px" />
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
    <table style="z-index: 1; width: 542px; position: relative; top: -348px; left: 294px">
        <tr>
            <td style="width: 146px">Kullan&#305;c&#305; Ad&#305;:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox1" runat="server" Height="16px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 146px">&nbsp;</td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Button3"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Kullan&#305;c&#305; ad&#305;n&#305;z mail format&#305;nda olmal&#305;d&#305;r" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 32px; width: 146px">Ad:</td>
            <td style="height: 32px; text-align: left">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Button3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 146px">Soyad:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Button3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 146px">Adres:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Button3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 65px; width: 146px">Telefon:</td>
            <td style="text-align: left; height: 65px">
                <asp:TextBox ID="TextBox5" runat="server" Width="122px" TextMode="Phone" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Button3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 146px">&nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="Button3" runat="server" CssClass="button button1" Text="Güncelle" OnClick="Button3_Click" ValidationGroup="Button3" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>

</asp:Content>
