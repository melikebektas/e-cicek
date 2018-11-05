<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Bayiler.aspx.cs" Inherits="AspCicekci.yonetim.Bayiler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Kurum_id" Height="174px" Width="1130px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="-&gt;" ShowSelectButton="True" />
            <asp:TemplateField HeaderText="Kurum No">
                <EditItemTemplate>
                    <asp:Label ID="lblBayiNo" runat="server" Text='<%# Bind("Kurum_id") %>'></asp:Label>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="lnkVazgec" runat="server">Vazgeç</asp:LinkButton>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Kurum_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Kullanıcı Adı">
                <EditItemTemplate>
                    <asp:TextBox ID="txtKullaniciAdi" runat="server" Text='<%# Bind("KKullanici_adi") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtYeniKullaniciAdi" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("KKullanici_adi") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Şifre">
                <EditItemTemplate>
                    <asp:TextBox ID="txtSifre" runat="server" Text='<%# Bind("Sifre") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtYeniSifre" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Sifre") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Yetkili Adı">
                <EditItemTemplate>
                    <asp:TextBox ID="txtYetkiliAdi" runat="server" Text='<%# Bind("K_ad") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtYeniYetkiliAdi" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("K_ad") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Yetkili Soyadı">
                <EditItemTemplate>
                    <asp:TextBox ID="txtYetkiliSoyadi" runat="server" Text='<%# Bind("K_soyad") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtYeniYetkiliSoyadi" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("K_soyad") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Bayi Adı">
                <EditItemTemplate>
                    <asp:TextBox ID="txtBayiAdi" runat="server" Text='<%# Bind("Kurum_ad") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtYeniBayiAdi" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Kurum_ad") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Vergi Dairesi">
                <EditItemTemplate>
                    <asp:TextBox ID="txtVergiDairesi" runat="server" Text='<%# Bind("Vergi_dairesi") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtYeniVergiDairesi" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Vergi_dairesi") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Vergi Numarası">
                <EditItemTemplate>
                    <asp:TextBox ID="txtVergiNo" runat="server" Text='<%# Bind("Vergi_numarasi") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtYeniVergiNo" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Vergi_numarasi") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Telefon">
                <EditItemTemplate>
                    <asp:TextBox ID="txtTelefon" runat="server" Text='<%# Bind("Telefon") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtYeniTelefon" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Telefon") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Adres">
                <EditItemTemplate>
                    <asp:TextBox ID="txtAdres" runat="server" Text='<%# Bind("Adres") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtYeniAdres" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Adres") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="lnkGuncelle" runat="server" CommandName="Update">Güncelle</asp:LinkButton>
                    <asp:LinkButton ID="lnkVazgec" runat="server" CommandName="Cancel">Vazgeç</asp:LinkButton>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="lnkYeniEkle" runat="server" CommandName="Insert">Yeni Ekle</asp:LinkButton>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkDuzenle" runat="server" CommandName="Edit">Düzenle</asp:LinkButton>
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
</asp:Content>
