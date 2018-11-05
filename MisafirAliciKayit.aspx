<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="MisafirAliciKayit.aspx.cs" Inherits="AspCicekci.MisafirSatis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <table align="right" cellpadding="0" cellspacing="0" style="width: 100px; height: 711px;">
            <tr>
                <td>   
        <table align="left" cellpadding="0" cellspacing="0" style="width: 480px; height: 710px">
            <tr>
                <td style="height: 37px">
                    <br />
                    Çiçe&#287;in Ad&#305;:</td>
                <td style="height: 37px">
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Toplam Fiyat:</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Al&#305;c&#305;n&#305;n Ad&#305; ve Soyad&#305; :</td>
                <td>
                    <asp:TextBox ID="txtisimsoy" runat="server" style="width: 124px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 289px">Gönderilme Tarihi:</td>
          <asp:Label ID="Label5" runat="server" style="z-index: 1; position: absolute; top: 990px; left: 355px" Text="Label"></asp:Label>
                </td>
                <td style="height: 289px">
                    <asp:TextBox ID="txttar" runat="server"></asp:TextBox>
                    <br />
          
                <asp:Calendar ID="Calendar1" runat="server" style="left: 14px; top: -37px" Height="163px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" Width="208px"></asp:Calendar>
              
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>Gönderilme Saati:         
              
                
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px"  Width="111px"  >
                </asp:DropDownList>
          </td>
            </tr>
            <tr>
                <td>Telefon:</td>
                <td>
                    <asp:TextBox ID="txttel" runat="server" TextMode="Phone" MaxLength="11"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Adres:</td>
                <td>
                    <asp:TextBox ID="txtadres" runat="server" Height="93px" TextMode="MultiLine" Width="202px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Al&#305;c&#305;ya Not:</td>
                <td>
                    <asp:TextBox ID="txtal&#305;c&#305;not" runat="server" Height="81px" TextMode="MultiLine" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                &nbsp;
              
                </td>
            </tr>
        </table>
       
  
                </td>
            </tr>
        </table>
        <br />
        <table cellpadding="0" cellspacing="0" style="width: 352px; height: 375px">
            <tr>
                <td colspan="2">Gönderen Bilgileri :</td>
            </tr>
            <tr>
                <td style="width: 159px">Ad :</td>
                <td style="width: 49px">
                    <asp:TextBox ID="txtad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 159px">Soyad:</td>
                <td style="width: 49px">
                    <asp:TextBox ID="txtsoy" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 159px">Mail :</td>
                <td style="width: 49px">
                    <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 159px">Adres :</td>
                <td style="width: 49px">
                    <asp:TextBox ID="txtadress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 159px">Telefon :</td>
                <td style="width: 49px">
                    <asp:TextBox ID="txttelefon" runat="server" TextMode="Phone" MaxLength="11"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 159px">Sipari&#351; Kodu :</td>
                <td style="width: 49px">
                    <asp:TextBox ID="txtsiparis" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
  
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
                <asp:Button ID="Button2" runat="server" CssClass="button button1" Text="Onayla" Width="129px" style="position: relative left: 552px; top: 192px; " OnClick="Button2_Click" Height="63px" />
    </p>

</asp:Content>
