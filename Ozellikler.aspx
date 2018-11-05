<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="Ozellikler.aspx.cs" Inherits="AspCicekci.Ozellikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="sablon_stil.css" rel="stylesheet" />
    <table align="center" cellpadding="0" cellspacing="0" style="width: 632px; height: 1042px;">
        <tr>
            <td style="height: 306px; width: 299px">
                <br />
                <asp:Image ID="Image1" runat="server" style="margin-right: 6px;  left: 6px; top: -122px; " Width="273px" Height="370px" />
            </td>
            <td style="height: 306px">
                <address>
                    &nbsp;</address>
                <address>
                                &nbsp;<strong><span style="font-size: large">Rengi:
                    </span>
                    <asp:Label ID="Label3" runat="server" style="font-size: large; color: #8E5683" Text="Label"></asp:Label>
                    <br style="font-size: large; color: #00FF00" />
                    </strong>
                </address>
                <address>
                    <strong>
                    <br style="color: #00FF00; font-size: large;" />
                    <span style="font-size: large">&nbsp;Boyu:
                    </span>
                    <asp:Label ID="Label4" runat="server" style="font-size: large; color: #885E86" Text="Label"></asp:Label>
                    <br style="color: #00FF00; font-size: large;" />
                    <br style="font-size: large; color: #00FF00" />
                    <span style="font-size: large">Anlam&#305;: </span>
                    <asp:Label ID="Label5" runat="server" style="font-size: large; color: #875E7E" Text="Label"></asp:Label>
                    <br style="font-size: large; color: #00FF00" />
                    </strong>
                </address>
                <br style="font-size: large" />
                <strong><em><span style="font-size: large">Fiyat:</span></em></strong><em><strong>
                <asp:Label ID="Label6" runat="server" style="font-size: large; color: #895D83" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
                </strong></em>
            </td>
        </tr>
        <tr>
            <td style="height: 112px; " colspan="2">
                <em><strong>
                <asp:Button ID="Button2" runat="server" CssClass="button button1" Text="Sat&#305;n Al" Width="172px" style="position: relative left: 552px; top: 192px; height: 64px" OnClick="Button2_Click" />
                </strong></em>
            </td>
        </tr>
        <tr>
            <td style="height: 120px; text-align: center;" colspan="2">
             
                  <span style="color: #875E7E"><em><strong>YORUMLAR:</strong></em></span><br />
                  <br />
                  <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        Kullan&#305;c&#305; Ad&#305;: <%#Eval("Kullanici_adi") %>
                        &nbsp;&nbsp;&nbsp;
                        Yorum : <%#Eval("Yorum") %>
                        <br />
                    </ItemTemplate>

                </asp:Repeater>
           
            </td>
        </tr>
        <tr>
            <td style="width: 299px">
                <br />
                Yorum Yaz&#305;n&#305;z:<br />
                <br />
                <asp:TextBox ID="txtYorum" runat="server" Height="103px" TextMode="MultiLine" Width="273px" style="color: #990033"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>
                <%--<asp:TextBox ID="TextBox2" runat="server" Height="127px" TextMode="MultiLine" Width="205px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>--%>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" CssClass="button button1" Height="60px" Width="131px" />
                <br />
                <br />
            </td>
        </tr>
    </table>
     <br />
                <br /> <br />
                <br /> <br />
                <br /> <br />
                <br />
</asp:Content>
