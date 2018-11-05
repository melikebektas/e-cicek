<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Siparisler.aspx.cs" Inherits="AspCicekci.yonetim.Siparisler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <div>
        <div style="height:31px; width:1130px; background-color:#2a595a; color:#fff;font-weight:bolder;">&nbsp;
            <asp:Button ID="btn_Arti" runat="server" Height="25px" Text="+" Width="25px" style="color:black" OnClick="btn_Arti_Click"    />
            &nbsp; <asp:Button ID="btn_Eksi" runat="server" Height="25px" Text="-" Width="25px" style="color:black" OnClick="btn_Eksi_Click"   />
        &nbsp;&nbsp;  Kayıtlı Müşteri Siparişleri
        </div>  
        <asp:Panel ID="pnl_kayitliMusteri" runat="server" BackColor="White" ForeColor="White">
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Siparis_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1113px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Siparis_id" HeaderText="Siparis_id" InsertVisible="False" ReadOnly="True" SortExpression="Siparis_id" />
                    <asp:BoundField DataField="Kullanici_adi" HeaderText="Kullanici_adi" SortExpression="Kullanici_adi" />
                    <asp:BoundField DataField="Teslimat_adresi" HeaderText="Teslimat_adresi" SortExpression="Teslimat_adresi" />
                    <asp:BoundField DataField="Teslimat_zamani" HeaderText="Teslimat_zamani" SortExpression="Teslimat_zamani" />
                    <asp:BoundField DataField="Teslimat_notu" HeaderText="Teslimat_notu" SortExpression="Teslimat_notu" />
                    <asp:BoundField DataField="Teslimat_kisi" HeaderText="Teslimat_kisi" SortExpression="Teslimat_kisi" />
                    <asp:BoundField DataField="Teslimat_telefonu" HeaderText="Teslimat_telefonu" SortExpression="Teslimat_telefonu" />
                    <asp:BoundField DataField="Kargo_durumu" HeaderText="Kargo_durumu" SortExpression="Kargo_durumu" />
                    <asp:BoundField DataField="Toplam_fiyat" HeaderText="Toplam_fiyat" SortExpression="Toplam_fiyat" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CICEKCIMConnectionString %>" DeleteCommand="DELETE FROM [SiparisBilgilerii] WHERE [Siparis_id] = @original_Siparis_id AND (([Kullanici_adi] = @original_Kullanici_adi) OR ([Kullanici_adi] IS NULL AND @original_Kullanici_adi IS NULL)) AND (([Teslimat_adresi] = @original_Teslimat_adresi) OR ([Teslimat_adresi] IS NULL AND @original_Teslimat_adresi IS NULL)) AND (([Teslimat_zamani] = @original_Teslimat_zamani) OR ([Teslimat_zamani] IS NULL AND @original_Teslimat_zamani IS NULL)) AND (([Teslimat_notu] = @original_Teslimat_notu) OR ([Teslimat_notu] IS NULL AND @original_Teslimat_notu IS NULL)) AND (([Teslimat_kisi] = @original_Teslimat_kisi) OR ([Teslimat_kisi] IS NULL AND @original_Teslimat_kisi IS NULL)) AND (([Teslimat_telefonu] = @original_Teslimat_telefonu) OR ([Teslimat_telefonu] IS NULL AND @original_Teslimat_telefonu IS NULL)) AND (([Kargo_durumu] = @original_Kargo_durumu) OR ([Kargo_durumu] IS NULL AND @original_Kargo_durumu IS NULL)) AND (([Toplam_fiyat] = @original_Toplam_fiyat) OR ([Toplam_fiyat] IS NULL AND @original_Toplam_fiyat IS NULL))" InsertCommand="INSERT INTO [SiparisBilgilerii] ([Kullanici_adi], [Teslimat_adresi], [Teslimat_zamani], [Teslimat_notu], [Teslimat_kisi], [Teslimat_telefonu], [Kargo_durumu], [Toplam_fiyat]) VALUES (@Kullanici_adi, @Teslimat_adresi, @Teslimat_zamani, @Teslimat_notu, @Teslimat_kisi, @Teslimat_telefonu, @Kargo_durumu, @Toplam_fiyat)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Siparis_id], [Kullanici_adi], [Teslimat_adresi], [Teslimat_zamani], [Teslimat_notu], [Teslimat_kisi], [Teslimat_telefonu], [Kargo_durumu], [Toplam_fiyat] FROM [SiparisBilgilerii]" UpdateCommand="UPDATE [SiparisBilgilerii] SET [Kullanici_adi] = @Kullanici_adi, [Teslimat_adresi] = @Teslimat_adresi, [Teslimat_zamani] = @Teslimat_zamani, [Teslimat_notu] = @Teslimat_notu, [Teslimat_kisi] = @Teslimat_kisi, [Teslimat_telefonu] = @Teslimat_telefonu, [Kargo_durumu] = @Kargo_durumu, [Toplam_fiyat] = @Toplam_fiyat WHERE [Siparis_id] = @original_Siparis_id AND (([Kullanici_adi] = @original_Kullanici_adi) OR ([Kullanici_adi] IS NULL AND @original_Kullanici_adi IS NULL)) AND (([Teslimat_adresi] = @original_Teslimat_adresi) OR ([Teslimat_adresi] IS NULL AND @original_Teslimat_adresi IS NULL)) AND (([Teslimat_zamani] = @original_Teslimat_zamani) OR ([Teslimat_zamani] IS NULL AND @original_Teslimat_zamani IS NULL)) AND (([Teslimat_notu] = @original_Teslimat_notu) OR ([Teslimat_notu] IS NULL AND @original_Teslimat_notu IS NULL)) AND (([Teslimat_kisi] = @original_Teslimat_kisi) OR ([Teslimat_kisi] IS NULL AND @original_Teslimat_kisi IS NULL)) AND (([Teslimat_telefonu] = @original_Teslimat_telefonu) OR ([Teslimat_telefonu] IS NULL AND @original_Teslimat_telefonu IS NULL)) AND (([Kargo_durumu] = @original_Kargo_durumu) OR ([Kargo_durumu] IS NULL AND @original_Kargo_durumu IS NULL)) AND (([Toplam_fiyat] = @original_Toplam_fiyat) OR ([Toplam_fiyat] IS NULL AND @original_Toplam_fiyat IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Siparis_id" Type="Int32" />
                    <asp:Parameter Name="original_Kullanici_adi" Type="String" />
                    <asp:Parameter Name="original_Teslimat_adresi" Type="String" />
                    <asp:Parameter Name="original_Teslimat_zamani" Type="DateTime" />
                    <asp:Parameter Name="original_Teslimat_notu" Type="String" />
                    <asp:Parameter Name="original_Teslimat_kisi" Type="String" />
                    <asp:Parameter Name="original_Teslimat_telefonu" Type="String" />
                    <asp:Parameter Name="original_Kargo_durumu" Type="String" />
                    <asp:Parameter Name="original_Toplam_fiyat" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Kullanici_adi" Type="String" />
                    <asp:Parameter Name="Teslimat_adresi" Type="String" />
                    <asp:Parameter Name="Teslimat_zamani" Type="DateTime" />
                    <asp:Parameter Name="Teslimat_notu" Type="String" />
                    <asp:Parameter Name="Teslimat_kisi" Type="String" />
                    <asp:Parameter Name="Teslimat_telefonu" Type="String" />
                    <asp:Parameter Name="Kargo_durumu" Type="String" />
                    <asp:Parameter Name="Toplam_fiyat" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Kullanici_adi" Type="String" />
                    <asp:Parameter Name="Teslimat_adresi" Type="String" />
                    <asp:Parameter Name="Teslimat_zamani" Type="DateTime" />
                    <asp:Parameter Name="Teslimat_notu" Type="String" />
                    <asp:Parameter Name="Teslimat_kisi" Type="String" />
                    <asp:Parameter Name="Teslimat_telefonu" Type="String" />
                    <asp:Parameter Name="Kargo_durumu" Type="String" />
                    <asp:Parameter Name="Toplam_fiyat" Type="String" />
                    <asp:Parameter Name="original_Siparis_id" Type="Int32" />
                    <asp:Parameter Name="original_Kullanici_adi" Type="String" />
                    <asp:Parameter Name="original_Teslimat_adresi" Type="String" />
                    <asp:Parameter Name="original_Teslimat_zamani" Type="DateTime" />
                    <asp:Parameter Name="original_Teslimat_notu" Type="String" />
                    <asp:Parameter Name="original_Teslimat_kisi" Type="String" />
                    <asp:Parameter Name="original_Teslimat_telefonu" Type="String" />
                    <asp:Parameter Name="original_Kargo_durumu" Type="String" />
                    <asp:Parameter Name="original_Toplam_fiyat" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
           <br /> 

      
         
        
            
            
        
     </asp:Panel>
        
    </div>
       <div style="height:30px;"></div>
    <div style="height:25px; width:1130px; background-color:#2a595a; color:#fff; font-weight:bolder;">&nbsp;
            <asp:Button ID="btn_ArtiYorum" runat="server" Height="25px" Text="+" Width="25px" style="color:black" OnClick="btn_ArtiYorum_Click"  />
            &nbsp; <asp:Button ID="btn_EksiYorum" runat="server" Height="25px" Text="-" Width="25px" style="color:black" OnClick="btn_EksiYorum_Click"   />
        &nbsp;&nbsp; Misafir Müşteri Siparişleri
        </div>  
        <asp:Panel ID="pnl_MisafirSiparis" runat="server" BackColor="White" ForeColor="White">
                <asp:ImageButton ID="ImageButton1" runat="server" Width="33px" ImageUrl="images/mail.png" OnClick="ImageButton1_Click"  />
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MSiparis_Kodu" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="1111px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="MSiparis_Kodu" HeaderText="MSiparis Kodu" ReadOnly="True" SortExpression="MSiparis_Kodu" />
                        <asp:BoundField DataField="MStok_id" HeaderText="MStok no" SortExpression="MStok_id" />
                        <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
                        <asp:BoundField DataField="MTeslimat_adresi" HeaderText="MTeslimat adresi" SortExpression="MTeslimat_adresi" />
                        <asp:BoundField DataField="MTeslimat_zamani" HeaderText="MTeslimat zamani" SortExpression="MTeslimat_zamani" />
                        <asp:BoundField DataField="MTeslimat_notu" HeaderText="MTeslimat notu" SortExpression="MTeslimat_notu" />
                        <asp:BoundField DataField="MTeslimat_kisi" HeaderText="MTeslimat kisi" SortExpression="MTeslimat_kisi" />
                        <asp:BoundField DataField="MKargo_durumu" HeaderText="MKargo durumu" SortExpression="MKargo_durumu" />
                        <asp:BoundField DataField="MToplam_fiyat" HeaderText="MToplam fiyat" SortExpression="MToplam_fiyat" />
                        <asp:BoundField DataField="MTeslimat_telefonu" HeaderText="MTeslimat telefonu" SortExpression="MTeslimat_telefonu" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CICEKCIMConnectionString2 %>" DeleteCommand="DELETE FROM [MisafirSiparisBilgilerii] WHERE [MSiparis_Kodu] = @original_MSiparis_Kodu AND (([MStok_id] = @original_MStok_id) OR ([MStok_id] IS NULL AND @original_MStok_id IS NULL)) AND (([Mail] = @original_Mail) OR ([Mail] IS NULL AND @original_Mail IS NULL)) AND (([MTeslimat_adresi] = @original_MTeslimat_adresi) OR ([MTeslimat_adresi] IS NULL AND @original_MTeslimat_adresi IS NULL)) AND (([MTeslimat_zamani] = @original_MTeslimat_zamani) OR ([MTeslimat_zamani] IS NULL AND @original_MTeslimat_zamani IS NULL)) AND (([MTeslimat_notu] = @original_MTeslimat_notu) OR ([MTeslimat_notu] IS NULL AND @original_MTeslimat_notu IS NULL)) AND (([MTeslimat_kisi] = @original_MTeslimat_kisi) OR ([MTeslimat_kisi] IS NULL AND @original_MTeslimat_kisi IS NULL)) AND (([MKargo_durumu] = @original_MKargo_durumu) OR ([MKargo_durumu] IS NULL AND @original_MKargo_durumu IS NULL)) AND (([MToplam_fiyat] = @original_MToplam_fiyat) OR ([MToplam_fiyat] IS NULL AND @original_MToplam_fiyat IS NULL)) AND (([MTeslimat_telefonu] = @original_MTeslimat_telefonu) OR ([MTeslimat_telefonu] IS NULL AND @original_MTeslimat_telefonu IS NULL))" InsertCommand="INSERT INTO [MisafirSiparisBilgilerii] ([MSiparis_Kodu], [MStok_id], [Mail], [MTeslimat_adresi], [MTeslimat_zamani], [MTeslimat_notu], [MTeslimat_kisi], [MKargo_durumu], [MToplam_fiyat], [MTeslimat_telefonu]) VALUES (@MSiparis_Kodu, @MStok_id, @Mail, @MTeslimat_adresi, @MTeslimat_zamani, @MTeslimat_notu, @MTeslimat_kisi, @MKargo_durumu, @MToplam_fiyat, @MTeslimat_telefonu)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MSiparis_Kodu], [MStok_id], [Mail], [MTeslimat_adresi], [MTeslimat_zamani], [MTeslimat_notu], [MTeslimat_kisi], [MKargo_durumu], [MToplam_fiyat], [MTeslimat_telefonu] FROM [MisafirSiparisBilgilerii]" UpdateCommand="UPDATE [MisafirSiparisBilgilerii] SET [MStok_id] = @MStok_id, [Mail] = @Mail, [MTeslimat_adresi] = @MTeslimat_adresi, [MTeslimat_zamani] = @MTeslimat_zamani, [MTeslimat_notu] = @MTeslimat_notu, [MTeslimat_kisi] = @MTeslimat_kisi, [MKargo_durumu] = @MKargo_durumu, [MToplam_fiyat] = @MToplam_fiyat, [MTeslimat_telefonu] = @MTeslimat_telefonu WHERE [MSiparis_Kodu] = @original_MSiparis_Kodu AND (([MStok_id] = @original_MStok_id) OR ([MStok_id] IS NULL AND @original_MStok_id IS NULL)) AND (([Mail] = @original_Mail) OR ([Mail] IS NULL AND @original_Mail IS NULL)) AND (([MTeslimat_adresi] = @original_MTeslimat_adresi) OR ([MTeslimat_adresi] IS NULL AND @original_MTeslimat_adresi IS NULL)) AND (([MTeslimat_zamani] = @original_MTeslimat_zamani) OR ([MTeslimat_zamani] IS NULL AND @original_MTeslimat_zamani IS NULL)) AND (([MTeslimat_notu] = @original_MTeslimat_notu) OR ([MTeslimat_notu] IS NULL AND @original_MTeslimat_notu IS NULL)) AND (([MTeslimat_kisi] = @original_MTeslimat_kisi) OR ([MTeslimat_kisi] IS NULL AND @original_MTeslimat_kisi IS NULL)) AND (([MKargo_durumu] = @original_MKargo_durumu) OR ([MKargo_durumu] IS NULL AND @original_MKargo_durumu IS NULL)) AND (([MToplam_fiyat] = @original_MToplam_fiyat) OR ([MToplam_fiyat] IS NULL AND @original_MToplam_fiyat IS NULL)) AND (([MTeslimat_telefonu] = @original_MTeslimat_telefonu) OR ([MTeslimat_telefonu] IS NULL AND @original_MTeslimat_telefonu IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_MSiparis_Kodu" Type="String" />
                        <asp:Parameter Name="original_MStok_id" Type="Int32" />
                        <asp:Parameter Name="original_Mail" Type="String" />
                        <asp:Parameter Name="original_MTeslimat_adresi" Type="String" />
                        <asp:Parameter Name="original_MTeslimat_zamani" Type="DateTime" />
                        <asp:Parameter Name="original_MTeslimat_notu" Type="String" />
                        <asp:Parameter Name="original_MTeslimat_kisi" Type="String" />
                        <asp:Parameter Name="original_MKargo_durumu" Type="String" />
                        <asp:Parameter Name="original_MToplam_fiyat" Type="String" />
                        <asp:Parameter Name="original_MTeslimat_telefonu" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MSiparis_Kodu" Type="String" />
                        <asp:Parameter Name="MStok_id" Type="Int32" />
                        <asp:Parameter Name="Mail" Type="String" />
                        <asp:Parameter Name="MTeslimat_adresi" Type="String" />
                        <asp:Parameter Name="MTeslimat_zamani" Type="DateTime" />
                        <asp:Parameter Name="MTeslimat_notu" Type="String" />
                        <asp:Parameter Name="MTeslimat_kisi" Type="String" />
                        <asp:Parameter Name="MKargo_durumu" Type="String" />
                        <asp:Parameter Name="MToplam_fiyat" Type="String" />
                        <asp:Parameter Name="MTeslimat_telefonu" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="MStok_id" Type="Int32" />
                        <asp:Parameter Name="Mail" Type="String" />
                        <asp:Parameter Name="MTeslimat_adresi" Type="String" />
                        <asp:Parameter Name="MTeslimat_zamani" Type="DateTime" />
                        <asp:Parameter Name="MTeslimat_notu" Type="String" />
                        <asp:Parameter Name="MTeslimat_kisi" Type="String" />
                        <asp:Parameter Name="MKargo_durumu" Type="String" />
                        <asp:Parameter Name="MToplam_fiyat" Type="String" />
                        <asp:Parameter Name="MTeslimat_telefonu" Type="String" />
                        <asp:Parameter Name="original_MSiparis_Kodu" Type="String" />
                        <asp:Parameter Name="original_MStok_id" Type="Int32" />
                        <asp:Parameter Name="original_Mail" Type="String" />
                        <asp:Parameter Name="original_MTeslimat_adresi" Type="String" />
                        <asp:Parameter Name="original_MTeslimat_zamani" Type="DateTime" />
                        <asp:Parameter Name="original_MTeslimat_notu" Type="String" />
                        <asp:Parameter Name="original_MTeslimat_kisi" Type="String" />
                        <asp:Parameter Name="original_MKargo_durumu" Type="String" />
                        <asp:Parameter Name="original_MToplam_fiyat" Type="String" />
                        <asp:Parameter Name="original_MTeslimat_telefonu" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            <br />
            <br />
                <br />
            <asp:Panel ID="pnl_Mail" runat="server" BackColor="White" ForeColor="White">
        <table style="width: 42%; height: 541px;">
        <tr>
            <td style="text-align: right; width: 177px; height: 36px; color:black">
                <asp:Label ID="Label6" runat="server" Text="Sipariş Kodu:"></asp:Label>
            </td>
            <td style="height: 36px">
                <asp:TextBox ID="txt_siparisKodu" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
            
        </tr>
           <tr>
            <td style="text-align: right; width: 177px; height: 36px; color:black">
                <asp:Label ID="Label7" runat="server" Text="Mail Adresi:"></asp:Label>
               </td>
            <td style="height: 36px">
                <asp:TextBox ID="txt_Mail" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
            </tr>
            
            
           <tr>
            <td style="text-align: right; width: 177px; height: 35px; color:black">
                <asp:Label ID="Label9" runat="server" Text="Teslimat Zamanı:"></asp:Label>
               </td>
            <td style="height: 35px">
                <asp:TextBox ID="txtTeslimatZamani" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
             </tr>
             
        <tr>
            <td style="text-align: right; width: 177px; height: 36px; color:black">
                <asp:Label ID="Label10" runat="server" Text="Teslimat Kişi:"></asp:Label>
            </td>
            <td style="height: 36px">
                <asp:TextBox ID="txt_TeslimatKisi" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
            </tr>
        
         <tr>
            <td style="text-align: right; width: 177px; height: 36px; color:black">
                <asp:Label ID="Label11" runat="server" Text="Teslimat Telefonu:"></asp:Label>
             </td>
            <td style="height: 36px">
                <asp:TextBox ID="txt_teslimatTelefonu" runat="server" Height="16px" Width="218px" ForeColor="Black"></asp:TextBox>
            </td>
            </tr>
                <tr>
            <td style="text-align: right; width: 177px; height: 36px; color:black">
                <asp:Label ID="Label12" runat="server" Text="Toplam Fiyat:"></asp:Label>
                    </td>
            <td style="height: 36px">
                <asp:TextBox ID="txt_ToplamFiyat" runat="server" Width="225px" ForeColor="Black"></asp:TextBox>
            </td>
            </tr> 
                <tr>
            <td style="text-align: right; width: 177px; height: 49px; color:black">
                <asp:Label ID="Label14" runat="server" Text="Kargo Durumu:"></asp:Label>
                    </td>
            <td style="height: 49px">
                <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Height="21px" Width="225px"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td style="text-align: right; width: 177px; color:black">
                <asp:Label ID="Label15" runat="server" Text="Mesaj:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_yorum" runat="server" Height="70px" TextMode="MultiLine" Width="225px" ForeColor="Black"></asp:TextBox>
            </td>
        </tr>
                <tr>
           <td>

               &nbsp;</td>
                    <td>
                        <asp:Button ID="btnMail" runat="server" ForeColor="Black" Height="30px" Text="Mail Gönder" Width="200px" OnClick="btnMail_Click" />
                    </td>
        </tr>
                </table>

            </asp:Panel>
        </asp:Panel>
    <div style="height:30px;">
  </div>  
</asp:Content>
