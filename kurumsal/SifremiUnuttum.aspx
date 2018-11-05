<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SifremiUnuttum.aspx.cs" Inherits="AspCicekci.kurumsal.SifremiUnuttum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  &nbsp;<style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 457px;
        }
        .auto-style2 {
            height: 177px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
              .auto-style4 {
                  position: absolute;
                  top: 106px;
                  left: 332px;
                  z-index: 1;
              }
              .auto-style5 {
                  font-size: xx-large;
              }
              .auto-style6 {
                  position: absolute;
                  top: 27px;
                  left: 4px;
                  z-index: 1;
              }
    </style></head><body><p>
    <img src="Resimler/papatya.gif" class="auto-style4" /></p>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td class="auto-style2" style="background-color: #008000; color: #FFFF00;">&nbsp;<em><br />
                    <br />
                    <br />
                    <span class="auto-style5">
                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style6" Height="58px" ImageUrl="~/Resimler/sarı.jpg" OnClick="ImageButton1_Click" Width="62px" />
                    BİZİMLE İLETİŞİME GEÇİN<img src="Resimler/papatya.gif" class="auto-style4" /><img src="Resimler/papatya.gif" class="auto-style4" /></span></em></td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #008000; color: #FFFF00;"><em>MAİL:info@gmail.com</em></td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #008000; color: #FFFF00;"><em>TELEFON:0534 523 11 18</em></td>
            </tr>
            <tr>
                <td style="background-color: #008000; color: #FFFF00;">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</body>
</html>
