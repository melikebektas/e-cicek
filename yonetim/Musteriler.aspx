<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Musteriler.aspx.cs" Inherits="AspCicekci.yonetim.Musteriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <div>
        <div style="height:31px; width:1130px; background-color:#2a595a; color:#fff;font-weight:bolder;">&nbsp;
            <asp:Button ID="btn_Arti" runat="server" Height="25px" Text="+" Width="25px" style="color:black" OnClick="btn_Arti_Click"   />
            &nbsp; <asp:Button ID="btn_Eksi" runat="server" Height="25px" Text="-" Width="25px" style="color:black" OnClick="btn_Eksi_Click"  />
        &nbsp;&nbsp;  Kayıtlı Müşteriler
        </div>  
        <asp:Panel ID="pnl_kayitli" runat="server" BackColor="White" ForeColor="White">
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1130px" DataKeyNames="Uye_id" OnRowDeleting="GridView1_RowDeleting"  >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ButtonType="Button" SelectText="-&gt;" ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="Üye No">
                        <EditItemTemplate>
                            <asp:Label ID="lbl_Uyeid" runat="server" Text='<%# Bind("Uye_id") %>'></asp:Label>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lnkVazgec" runat="server" CommandName="Cancel">Vazgeç</asp:LinkButton>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Uye_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Kullanıcı Adı">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtKullaniciAdi" runat="server" Text='<%# Bind("Kullanici_adi") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txrYeniKullanici" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Kullanici_adi") %>'></asp:Label>
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
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Sifre") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ad">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAd" runat="server" Text='<%# Bind("Ad") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtYeniAd" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Ad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Soyad">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSoyad" runat="server" Text='<%# Bind("Soyad") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtYeniSoyad" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Soyad") %>'></asp:Label>
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
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Adres") %>'></asp:Label>
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
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("Telefon") %>'></asp:Label>
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
            </asp:Panel>
        
    </div>
    <div style="height:30px; width: 899px;"></div>
     <div>
        <div style="height:31px; background-color:#2a595a; color:#fff;font-weight:bolder;">&nbsp;
            <asp:Button ID="btn_kayitliEkle" runat="server" Height="25px" Text="+" Width="25px" style="color:black" OnClick="btn_kayitliEkle_Click"   />
            &nbsp; <asp:Button ID="btn_kayitliSil" runat="server" Height="25px" Text="-" Width="25px" style="color:black" OnClick="btn_kayitliSil_Click"   />
        &nbsp;&nbsp;  Misafir Müşteriler
        </div>  
        <asp:Panel ID="pnl_musteri" runat="server" BackColor="White" ForeColor="White">
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1130px" DataKeyNames="Misafir_id" OnRowDeleting="GridView2_RowDeleting"  >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ButtonType="Button" SelectText="-&gt;" ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="Misafir No">
                        <EditItemTemplate>
                            <asp:Label ID="lbl_Misafirid" runat="server" Text='<%# Bind("Misafir_id") %>'></asp:Label>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lnkVazgec" runat="server" CommandName="Cancel">Vazgeç</asp:LinkButton>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Misafir_id") %>'></asp:Label>
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
                            <asp:Label ID="lblTelefon" runat="server" Text='<%# Bind("Telefon") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ad">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAd" runat="server" Text='<%# Bind("Ad") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtYeniAd" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblAd" runat="server" Text='<%# Bind("Ad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Soyad">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSoyad" runat="server" Text='<%# Bind("Soyad") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtYeniSoyad" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblSoyad" runat="server" Text='<%# Bind("Soyad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Adres">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Adres") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblAdres" runat="server" Text='<%# Bind("Adres") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mail Adresi">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Mail") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblMail" runat="server" Text='<%# Bind("Mail") %>'></asp:Label>
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
            </asp:Panel>
        
    </div>
    <div style="height:30px;"></div>
</asp:Content>
