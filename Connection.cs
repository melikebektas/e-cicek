using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;

namespace satıskısmı.Siniflar
{
    public class Connection
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=CICEKCIM;Integrated Security=True");
        SqlCommand cmd;
        SqlCommand komut;
        SqlDataReader dr;
        public byte control=0;
        public List<String> liste = new List<string>();
        public String kullaniciAdi,kullaniciID,ad;
        public String EkUrunadi, EkUrunFiyat;
        public String GonderimNedeni;
        public String Cicek_adi, Kategori, Fiyat, Teslimat_zamani;


        public void baglantiAc()
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }            
        }
        public void baglantiKapat()
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }
        public void girisYap(String kul_adi,String sifre)
        {
            baglantiAc();
            cmd = new SqlCommand("SELECT * FROM BireyselUyeler WHERE Kullanici_adi = @KulAdi AND Sifre = @Sifre",conn);
            cmd.Parameters.AddWithValue("@KulAdi",kul_adi);
            cmd.Parameters.AddWithValue("@Sifre",sifre);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                control++;
                kullaniciID = dr["Uye_id"].ToString();
                kullaniciAdi = dr["Kullanici_adi"].ToString();
                ad = dr["Ad"].ToString();
            }
            baglantiKapat();
        }
        public void EkUrunCek(String kul_adi)
        {
            baglantiAc();
            cmd = new SqlCommand("SELECT * FROM EkUrunSepet WHERE Kullanici_adi = @Kul_adi AND Durum=@Durum", conn);
            cmd.Parameters.AddWithValue("@Kul_adi", kul_adi);
            cmd.Parameters.AddWithValue("@Durum", "Alınmadı");
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                EkUrunadi= dr["EkUrun_adi"].ToString();
                EkUrunFiyat = dr["fiyat"].ToString();
                liste.Add(EkUrunadi+ " "+EkUrunFiyat);
            }
            baglantiKapat();
        }

             public void kartCek(String kul_adi )
        {
            baglantiAc();
            cmd = new SqlCommand("SELECT * FROM kartNotu WHERE Kullanici_adi = @Kullanici_adi", conn);
            cmd.Parameters.AddWithValue("@Kullanici_adi", kul_adi);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                GonderimNedeni= dr["Gonderim_Nedeni"].ToString();
                liste.Add(GonderimNedeni);
            }
            baglantiKapat();
        }






        public void BilgiGetir(String EkUrun_id,string kul_adi)
        {
            baglantiAc();
            cmd = new SqlCommand("select fiyat,EkUrun_adi from EkUrun WHERE EkUrun_id=@EkUrun_id",conn);
            cmd.Parameters.AddWithValue("@EkUrun_id", EkUrun_id);
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                EkUrunadi = dr["EkUrun_adi"].ToString();
                EkUrunFiyat = dr["fiyat"].ToString();
                liste.Add(EkUrunadi + " " + EkUrunFiyat);
            }
            baglantiKapat();
            EkUrunKaydet(EkUrunFiyat.ToString(),EkUrunadi,kul_adi,"Alındı");
        
        
        }






        public void EkUrunKaydet(string fiyat,string EkUrun_adi,string Kullanici_adi,string Durum )
        {
            baglantiAc();
            cmd = new SqlCommand("insert into EkUrunSepet values (@fiyat,@EkUrun_adi,@Kullanici_adi,@Durum)", conn);
            cmd.Parameters.AddWithValue("@fiyat",fiyat );
            cmd.Parameters.AddWithValue("@fiyat", EkUrun_adi);
            cmd.Parameters.AddWithValue("@fiyat", Kullanici_adi);
            cmd.Parameters.AddWithValue("@fiyat", Durum);
            cmd.ExecuteNonQuery();
            baglantiKapat();

        }





        public void KartBilgiGetir(string kartNotu,string kart_Gonderen,string Gonderim_Nedeni)
        {
            baglantiAc();
            cmd = new SqlCommand("insert into kartNotu values (@kartNotu,@kart_Gonderen,@Gonderim_Nedeni)", conn);
            cmd.Parameters.AddWithValue("@kartNotu",kartNotu );
            cmd.Parameters.AddWithValue("@kart_Gonderen", kart_Gonderen);
            cmd.Parameters.AddWithValue("@Gonderim_Nedeni", Gonderim_Nedeni);
            cmd.ExecuteNonQuery();
            baglantiKapat();
        
        }



        public void EkUrunBilgiGetir(String EkUrun_id, string kul_adi)
        {

            baglantiAc();
            cmd = new SqlCommand("select fiyat,EkUrun_adi from EkUrun WHERE EkUrun_id=@EkUrun_id", conn);
            cmd.Parameters.AddWithValue("@EkUrun_id", EkUrun_id);
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                EkUrunadi = dr["EkUrun_adi"].ToString();
                EkUrunFiyat = dr["fiyat"].ToString();
                liste.Add(EkUrunadi + " " + EkUrunFiyat);
            }
            baglantiKapat();
        }




        public void AnaUrunSepeteEkle(String kul_adi)
        {

            baglantiAc();
            cmd = new SqlCommand("SELECT * FROM SiparisBilgileri WHERE Kullanici_adi = @Kul_adi ", conn);
            cmd.Parameters.AddWithValue("@kul_adi", kul_adi);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Cicek_adi = dr["EkUrun_adi"].ToString();
                Kategori = dr["fiyat"].ToString();
                Fiyat = dr["fiyat"].ToString();
                Teslimat_zamani = dr["fiyat"].ToString();
                liste.Add(Cicek_adi + " " + Kategori + " " + Fiyat + " " + Teslimat_zamani);
            }
            baglantiKapat();
        
        }



        public void SiparisBilgisiEkle(string Kullanici_adi,string Teslimat_kisi, string Teslimat_telefonu, string Teslimat_adresi, string Teslimat_zamani,  string Teslimat_notu,string Kargo_durumu,string Toplam_fiyat)
        {
            baglantiAc();
            cmd = new SqlCommand("insert into SiparisBilgileri values (@Kullanici_adi,@Teslimat_kisi,@Teslimat_telefonu,@Teslimat_adresi,@Teslimat_zamani,@Teslimat_notu,@Kargo_durumu,@Toplam_fiyat)", conn);
            cmd.Parameters.AddWithValue("@Kullanici_adi", Kullanici_adi);
            cmd.Parameters.AddWithValue("@Teslimat_kisi", Teslimat_kisi);
            cmd.Parameters.AddWithValue("@Teslimat_telefonu", Teslimat_telefonu);
            cmd.Parameters.AddWithValue("@Teslimat_adresi", Teslimat_adresi);
            cmd.Parameters.AddWithValue("@Teslimat_zamani", Teslimat_zamani);
            cmd.Parameters.AddWithValue("@Teslimat_notu", Teslimat_notu);
            cmd.Parameters.AddWithValue("@Kargo_durumu", Kargo_durumu);
            cmd.Parameters.AddWithValue("@Toplam_fiyat", Toplam_fiyat);

            
            cmd.ExecuteNonQuery();
            baglantiKapat();
        
        
        }


        public void KartBilgileriEkle(string Kart_numarasi,string SKT,string cvv)
        {
            baglantiAc();
            cmd = new SqlCommand("insert into KartBilgileri values (@Kart_numarasi,@SKT,@cvv)",conn);
            cmd.Parameters.AddWithValue("@Kart_numarasi", Kart_numarasi);
            cmd.Parameters.AddWithValue("@SKT", SKT);
            cmd.Parameters.AddWithValue("@cvv", cvv);
            cmd.ExecuteNonQuery();
            baglantiKapat();
        
        }




        public void ToplamFiyatHesapla(String Cicek_id, String EkUrun_id)
        {
            baglantiAc();
            cmd = new SqlCommand("select Fiyat from Stok WHERE Cicek_id=@Cicek_id", conn);
            komut = new SqlCommand("select fiyat from EkUrunSepet where EkUrun_id=@EkUrun_id ",conn);
            cmd.Parameters.AddWithValue("@Cicek_id", Cicek_id);
            cmd.Parameters.AddWithValue("@EkUrun_id", EkUrun_id);

           
            dr = cmd.ExecuteReader();
            dr = komut.ExecuteReader();

            while (dr.Read())
            {
                Fiyat = dr["EkUrun_adi"].ToString();
                Fiyat= dr["Fiyatt"].ToString();
                liste.Add(Fiyat + " " + Fiyat);
            }
            baglantiKapat();
           
        
        
        
        }








    
public  object Kul_adi { get; set; }}
}