<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Filtreleme.aspx.cs" Inherits="AspCicekci.yonetim.Filtreleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:DropDownList ID="DropDownList1" runat="server" Height="28px">
        <asp:ListItem Value="bireysel">Bireysel Üyeler</asp:ListItem>
        <asp:ListItem Value="misafir">Misafir Bilgileri</asp:ListItem>
        <asp:ListItem>Bayi</asp:ListItem>
        <asp:ListItem Value="siparis">Sipariş Bilgileri</asp:ListItem>
        <asp:ListItem Value="misafirSiparis">Misafir Sipariş Bilgileri</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button2" runat="server" Text="Getir"  Width="106px" OnClick="Button2_Click" />
    <br />
    <br />

    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="196px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Bul" Width="116px" OnClick="Button1_Click" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="271px" Width="881px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
</asp:Content>
