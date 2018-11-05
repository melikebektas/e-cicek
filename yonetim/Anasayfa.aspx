<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="AspCicekci.yonetim.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
     &nbsp;
     <asp:ImageButton ID="ImageButton1" runat="server" Height="160px" ImageUrl="images/cicekcim.png"  BorderColor="#BEDDFE" Width="260px" BorderStyle="Solid" BorderWidth="2px" OnClick="ImageButton1_Click"   />&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" Height="160px" Width="260px" BorderStyle="Solid" BorderWidth="2px" ImageUrl="images/bayiler.png" BorderColor="#6666BF" OnClick="ImageButton2_Click" />&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton3" runat="server" Height="160px" Width="260px" BorderStyle="Solid" BorderWidth="2px" ImageUrl="images/yorumlar.png" BorderColor="#B57C93" OnClick="ImageButton3_Click" />&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton4" runat="server" Height="160px" Width="260px" BorderStyle="Solid" BorderWidth="2px" ImageUrl="images/siparisler.png" BorderColor="#6DB993" OnClick="ImageButton4_Click" /><br />
   <br />
    <br />
    <br /> <br />
    <br />
    <br /> <asp:Image ID="Image1" runat="server" Width="1124px" Height="195px"  ImageUrl="images/footer.png"/>
</asp:Content>
