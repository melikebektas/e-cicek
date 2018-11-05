<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="BireyselKargoTakibi.aspx.cs" Inherits="AspCicekci.BireyselKargoTakibi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <br />
       
        <asp:Button ID="Button1" runat="server" CssClass="button button1" Text="Üyelik Bilgilerim" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" CssClass="button button1" Text="&#350;ifre De&#287;i&#351;tir" Width="232px" OnClick="Button2_Click1" />
        <asp:Button ID="Button3" runat="server" CssClass="button button1" Text="Sipari&#351; Takibi" Width="233px" OnClick="Button3_Click" />
       
        <br />
        <div style="text-align: center">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>Teslimat Zamanı :</td>
                        <td> <%#Eval("Teslimat_zamani") %></td>
                       
                    </tr>
                    <tr>
                         <td>Teslimat Adresi :</td>
                        <td> <%#Eval("Teslimat_adresi") %></td>
                       
                    </tr>
                    <tr>
                         <td>Teslimat Alıcısı: :</td>
                        <td> <%#Eval("Teslimat_kisi") %></td>
                       
                    </tr>
                    <tr>
                         <td>Teslimat Alıcısının Numarası :</td>
                        <td><%#Eval("Teslimat_telefonu") %></td>
                       
                    </tr>
                    <tr>
                         <td>Teslimat Alıcısının Adresi :</td>
                        <td> <%#Eval("Teslimat_adresi") %></td>
                       
                    </tr>
                    <tr>
                         <td>Teslimat Notu :</td>
                        <td>    <%#Eval("Teslimat_notu") %></td>
                       
                    </tr>
                    <tr>
                         <td>Toplam Fiyat :</td>
                        <td> <%#Eval("Toplam_fiyat") %></td>
                       
                    </tr>
                    <tr>
                         <td>Kargo Durumu :</td>
                        <td> <%#Eval("Kargo_durumu") %></td>
                       
                    </tr>
                </table>
  

            </ItemTemplate>
          



        </asp:Repeater></div>
        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />


    </div>
</asp:Content>
