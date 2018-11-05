<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="SatisSayfasi.aspx.cs" Inherits="AspCicekci.BireyselUyeSatis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center" cellpadding="0" cellspacing="0" style="width: 848px; height: 235px">
        <tr>
            <td style=" height: 137px;">
                <asp:Image ID="Image1" runat="server" Height="287px" Width="208px" />
            </td>
            <td colspan="1" style="width: 316px">
                <asp:Image ID="Image2" runat="server" Height="273px" Width="191px" />
            </td>
             <td colspan="2" style="height: 137px">Çiçe&#287;in Fiyat&#305;=<asp:Label ID="Label4" runat="server"></asp:Label>
                 &nbsp;<br />
                 Ek Ürün Fiyat&#305;=<asp:Label ID="Label5" runat="server"></asp:Label>
                 TL<br />
                 <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click" Text="Ek Ürün &#304;ptal" Width="99px" />
                 <br />
                 Toplam Fiyat=<asp:Label ID="Label6" runat="server"></asp:Label>
                 TL<br />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 21px">Ek Ürünler:<asp:Label ID="Label3" runat="server">Label</asp:Label>
                <br />
                <asp:Button ID="Button2" runat="server" Height="24px" OnClick="Button2_Click" Text="Ek Ürün Ekle" Width="93px" />
            </td>
        </tr>
        <tr>
            <td style="width: 176px; height: 245px;">
                <asp:RadioButton ID="RadioButton1" Text='<img src="images/ekurun/anne.jpg" Width="200px" />' runat="server" GroupName="1" />
            </td>
            <td style="height: 245px; width: 316px;">
                <asp:RadioButton ID="RadioButton4" Text='<img src="images/ekurun/kuran-&#305;%20kerim.jpg" Width="200px" />' runat="server" GroupName="1" />
            </td>
            <td style="height: 245px; width: 320px;">
                <asp:RadioButton ID="RadioButton6" Text='<img src="images/ekurun/oscar.jpg" Width="200px" />' runat="server" GroupName="1" />
            </td>
            <td style="height: 245px">
                <asp:RadioButton ID="RadioButton5" Text='<img src="images/ekurun/metinli-rakarift.jpg" Width="200px" />' runat="server" GroupName="1" />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <br />
                <asp:ImageButton ID="ImageButton7" runat="server" Height="64px" ImageUrl="~/images/ileri.png" OnClick="ImageButton7_Click" Width="62px" />
                <br />
            </td>
        </tr>
    </table>

</asp:Content>
