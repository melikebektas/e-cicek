<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="MailGonder.aspx.cs" Inherits="AspCicekci.MailGonder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="margin: 20px; height: 600px; width: 1113px">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/gerioku1.png" Height="32px" OnClick="ImageButton1_Click"/> 
         <asp:Label ID="Label3" runat="server"></asp:Label>
         <div style="margin-left: 280px"> <asp:Label ID="Label1" runat="server" Text="Mail Gönder" Font-Bold="True" Font-Overline="False" Font-Size="Larger" ></asp:Label></div>     <asp:Panel ID="pnl_Mail" runat="server" BackColor="#F8F8F8" ForeColor="White">
        <table style="width: 22%; height: 243px; margin-left: 280px;">
        <tr>
            <td style="text-align: center; width: 456px;">
                <span style="color: #5C3664">Kullan&#305;c&#305; Ad&#305;:</span></td>
            
        </tr>
            <tr>
                <td style="text-align: center; width: 456px;">
                    <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; width: 456px;">
                    <asp:Button ID="btnMail" runat="server" CssClass="button2" ForeColor="Black" Height="57px" OnClick="btnMail_Click" Text="Onayla" Width="200px" />
                    <br />
                </td>
            </tr>
                </table>

            </asp:Panel>
    
    </div>
</asp:Content>
