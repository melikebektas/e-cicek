<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="AspCicekci.yonetim.Urunler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"  Width="838px" DataKeyNames="OnayliCicek_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="-&gt;" ShowSelectButton="True" />
            <asp:TemplateField HeaderText="Çiçek No">
                <EditItemTemplate>
                    <asp:Label ID="lbl_Cicekid" runat="server" Text='<%# Bind("OnayliCicek_id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("OnayliCicek_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Çiçek Resim">
                <EditItemTemplate>
                    <asp:TextBox ID="txt_cicekResim" runat="server" Text='<%# Bind("OnayliCicek_resim") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("OnayliCicek_resim") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Çiçek Adı">
                <EditItemTemplate>
                    <asp:TextBox ID="txt_CicekAdi" runat="server" Text='<%# Bind("OnayliCicek_adi") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("OnayliCicek_adi") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Çiçek Renk">
                <EditItemTemplate>
                    <asp:TextBox ID="txt_CicekRenk" runat="server" Text='<%# Bind("OnayliCicek_renk") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("OnayliCicek_renk") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Çiçek Boyu">
                <EditItemTemplate>
                    <asp:TextBox ID="txtCicekBoyu" runat="server" Text='<%# Bind("OnayliCicek_boyu") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("OnayliCicek_boyu") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Çiçek Anlamı">
                <EditItemTemplate>
                    <asp:TextBox ID="txt_CicekAnlami" runat="server" Text='<%# Bind("OnayliCicek_anlami") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("OnayliCicek_anlami") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Kategori">
                <EditItemTemplate>
                    <asp:TextBox ID="txtKategori" runat="server" Text='<%# Bind("OnayliKategori") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("OnayliKategori") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:LinkButton ID="lnkGuncelle" runat="server" CommandName="Update">Güncelle</asp:LinkButton>
                    <asp:LinkButton ID="lnkVazgec" runat="server" CommandName="Cancel">Vazgeç</asp:LinkButton>
                </EditItemTemplate>
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
