<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspCicekci.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <table align="center" cellpadding="0" cellspacing="0" style="width: 100px">
            <tr>
                <td style="width: 350px">
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="264px" Width="423px" ImageUrl="~/images/cicekler/enyeni.png" OnClick="ImageButton6_Click" />
                </td>
                <td colspan="3" style="text-align: right">
                    <asp:ImageButton ID="ImageButton11" runat="server" Height="262px" ImageUrl="~/images/cicekler/butikcicekler.png" OnClick="ImageButton11_Click" Width="432px" />
                </td>
                <td style="text-align: right; width: 268435456px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <div style="text-align: center">
                    <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
            <a href="Ozellikler.aspx?OnayliCicek_id=<%#Eval("OnayliCicek_id")%>" />
             
        <img src="<%#Eval("OnayliCicek_resim") %>" alt="<%#Eval("OnayliCicek_resim") %>" id="resimler"/>    
            </ItemTemplate>        
                    </asp:Repeater>
                    </div>
                </td>
                <td style="width: 268435456px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 350px">
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="281px" ImageUrl="~/images/cicekler/Anasayfadogumgünüü.png" OnClick="ImageButton8_Click" Width="431px" />
                </td>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="275px" ImageUrl="~/images/cicekler/anasayfabonnyfood.png" OnClick="ImageButton7_Click" Width="414px" style="margin-left: 0px" />
                </td>
                <td style="width: 268435456px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center;" colspan="4">
                   <%-- <asp:Repeater ID="Repeater2" runat="server">
                           <ItemTemplate>
            <a href="Ozellikler.aspx?OnayliCicek_id=<%#Eval("OnayliCicek_id")%>" />
             
        <img src="<%#Eval("OnayliCicek_resim") %>" alt="<%#Eval("OnayliCicek_resim") %>" id="resimler"/>    
            </ItemTemplate>        
                    </asp:Repeater>--%>
                    <asp:Repeater ID="Repeater4" runat="server">
                         <ItemTemplate>
            <a href="Ozellikler.aspx?OnayliCicek_id=<%#Eval("OnayliCicek_id")%>" />
             
        <img src="<%#Eval("OnayliCicek_resim") %>" alt="<%#Eval("OnayliCicek_resim") %>" id="resimler"/>    
            </ItemTemplate>        
                    </asp:Repeater>
                    <br />
                </td>
                <td style="width: 268435456px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ImageButton ID="ImageButton13" runat="server" Height="275px" ImageUrl="~/images/cicekler/anasayfakisiyeozel.png" OnClick="ImageButton13_Click" Width="422px" />
                </td>
                <td colspan="2">
                    <asp:ImageButton ID="ImageButton14" runat="server" Height="270px" ImageUrl="~/images/cicekler/anasayfameyvesepeti.png" OnClick="ImageButton14_Click" Width="419px" />
                </td>
                <td style="width: 268435456px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
                <td style="width: 268435456px">
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </div>
</asp:Content>
