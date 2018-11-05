<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Satis.aspx.cs" Inherits="satıskısmı.Satis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Stil/stil.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
		<header>
			<div><img src="img/logo.jpg"></div>
		</header>
		<div class="menu">
			<nav>
				<div id="ana-urun">
					<div id="ana-urun-yazi">ANA ÜRÜN</div>
					<img id="ana-urun-resim" src="img/1.png">
					<div id="urun-bilgisi">
						3 Dal Phalaenopsis Orkide
						Kadıköy - Caddebostan 
						ISTANBUL-ANADOLU
						03 Mayıs
						09:00 - 13:30
					</div>
				    <asp:Button ID="Button1" runat="server" BackColor="#009933" style="z-index: 1; left: 1007px; top: 248px; position: absolute; width: 86px" Text="İLERİ" />
				</div>

				<div id="ek-urun">
					<div id="ek-urun-yazi">EK ÜRÜNLER</div>
				</div>

				<div id="kart-urun">
					<div id="kart-urun-yazi">Kart ve Notlar</div>
					<img id="Img1" src="img/note.png">


				</div>

			</nav>
			<div id="yazi">EK ÜRÜNLER</div>
            <div class="ek-urun-repeater">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="EkUrunds">
            <ItemTemplate>
                <a href="Anasayfa.aspx">
                   <div class="urun-div">   
                        <div id="UrunResim">
                            <img src="<%#Eval("Resim_yolu") %>" alt="<%#Eval("Resim_yolu") %>" id="resimler"/>             
                       </div>   
                       <div class="urunBilgileri">
                            <p><%#Eval("EkUrun_adi") %></p>
                            <p><%#Eval("fiyat") %> TL</p>   
                            <asp:Button ID="sepet" runat="server" Text="SEPETE EKLE" PostBackUrl='<%# "Satis.aspx?urunID="+Eval("EkUrun_id") %>' />
                       </div>                 
                   </div>
                </a>
            </ItemTemplate>
        </asp:Repeater>  
        <asp:SqlDataSource ID="EkUrunds" runat="server" ConnectionString="<%$ ConnectionStrings:CICEKCIMConnectionString %>" SelectCommand="SELECT * FROM [EkUrun]"></asp:SqlDataSource>
                
                <asp:Panel ID="Panel1" runat="server" BackColor="White" style="height: 579px; width: 230px; z-index: 1; left: 968px; top: 286px; position: absolute">
                    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 44px; top: 7px; position: absolute; height: 17px; right: 66px;" Text="Sipariş Özeti" Font-Size="Medium"></asp:Label>
                    <asp:Label ID="Label2" runat="server" ForeColor="#009933" style="z-index: 1; left: 7px; top: 36px; position: absolute" Text="Ana Ürün"></asp:Label>
                    <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: -4px; top: 66px; position: absolute; height: 509px; width: 230px">
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SepetDs">
                            <ItemTemplate>
                             <p><%#Eval("Cicek_adi") %></p>
                            <p><%#Eval("Kategori") %> </p>  
                             <p><%#Eval("Fiyat") %> TL</p>  
                             </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SepetDs" runat="server" ConnectionString="<%$ ConnectionStrings:CICEKCIMConnectionString %>" SelectCommand="SELECT Cicek_adi,Fiyat,Kategori FROM Cicek  c inner join Stok s on c.Cicek_id=s.Cicek_id
inner join Sepet sp on s.Stok_id=sp.Stok_id where sp.Kullanici_adi=@KullaniciAdi">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="Misafir" Name="KullaniciAdi" SessionField="KullaniciAdi" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>
                </asp:Panel>
                
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#003300" style="z-index: 1; left: 157px; top: 866px; position: absolute; width: 72px" Text="Geri" />
                
            </div>
            
	</div>
        </form>
</body>
</html>
