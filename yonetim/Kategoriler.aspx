<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="AspCicekci.yonetim.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
      
    <table style="width:100%;">
        <tr>
            <td>
                <asp:ImageButton ID="imgEkle" ImageUrl="images/plus1.png" runat="server" Height="30px" OnClick="imgEkle_Click"  />
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" Width="1130px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Kategori_id" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" SelectText="-&gt;" ShowSelectButton="True" />
                        <asp:TemplateField HeaderText="Kategori No">
                            <EditItemTemplate>
                                <asp:Label ID="lblKategoriNo" runat="server" Text='<%# Bind("Kategori_id") %>'></asp:Label>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton ID="lnkVazgec" runat="server" CommandName="Cancel" ForeColor="Black">Vazgeç</asp:LinkButton>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Kategori_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Kategori Adı">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtKategoriAdi" runat="server" ForeColor="Black"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtYeniKategoriAdi" runat="server" ForeColor="Black"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Kategori") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="lnkGuncelle" runat="server" CommandName="Update" ForeColor="Black">Güncelle</asp:LinkButton>
                                <asp:LinkButton ID="lnkVazgec" runat="server" CommandName="Cancel" ForeColor="Black">Vazgeç</asp:LinkButton>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton ID="lnkEkle" runat="server" CommandName="Insert" ForeColor="Black">Ekle</asp:LinkButton>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkDuzenle" runat="server" CommandName="Edit" ForeColor="Black">Düzenle</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField DeleteText="Sil" ShowDeleteButton="True" />
                    </Columns>
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
            </td>
            
            
        </tr>
        
    </table>
  
    
</asp:Content>
