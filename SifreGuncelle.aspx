<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="SifreGuncelle.aspx.cs" Inherits="AspCicekci.SifreGuncelle" %>
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
           <asp:Button ID="Button4" runat="server" CssClass="button button1" Text="Üyelik Bilgilerim" Height="67px" OnClick="Button4_Click" Width="240px" />
       </p>
       <p>
           <asp:Button ID="Button5" runat="server" CssClass="button button1" Text="&#350;ifre  De&#287;i&#351;tir" Height="62px" OnClick="Button5_Click" Width="240px" />
       </p>
       <p>
           <asp:Button ID="Button6" runat="server" CssClass="button button1" Text="Sipari&#351; Takibi" Height="64px" OnClick="Button6_Click" Width="240px" />
       </p>
    
           <table style="z-index: 1; width: 451px; position: relative; top: -236px; left: 293px; height: 235px">
               <tr>
                   <td>&#350;ifre:</td>
                   <td style="text-align: left">
                       <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Button3"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td>Yeni &#350;ifre:</td>
                   <td style="text-align: left">
                       <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ToolTip="en fazla 12 karakter olmas&#305; gerekiyor" CssClass="textbox"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Button3"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td>Yeni &#350;ifre Tekrar:</td>
                   <td style="text-align: left">
                       <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style2">&nbsp;</td>
                   <td style="text-align: left">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Button3"></asp:RequiredFieldValidator>
                       <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="&#350;ifreler e&#351;le&#351;medi" ForeColor="Red" ValidationGroup="Button3" ValueToCompare="Button3"></asp:CompareValidator>
                   </td>
               </tr>
               <tr>
                   <td>&nbsp;</td>
                   <td style="text-align: left">
                       <asp:Button ID="Button3" runat="server" CssClass="button button1" Text="Güncelle" OnClick="Button3_Click" />
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

    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
