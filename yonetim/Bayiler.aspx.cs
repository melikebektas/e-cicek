using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspCicekci.yonetim
{
    public partial class Bayiler : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                DataGetir();


            }
        }
        private void DataGetir()
        {
            SqlDataAdapter adp = new SqlDataAdapter("Select Kurum_id,KKullanici_adi,Sifre,K_ad,K_soyad,Kurum_ad,Vergi_dairesi,Vergi_numarasi,Telefon,Adres from KurumsalUyeler", cnn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Bayi_id = (Label)GridView1.Rows[e.RowIndex].FindControl("lblBayiNo");
            TextBox KullaniciAdi = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtKullaniciAdi");
            TextBox Sifre = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtSifre");
            TextBox YetkiliAdi = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtYetkiliAdi");
            TextBox YetkiliSoyadi = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtYetkiliSoyadi");
            TextBox BayiAdi = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtBayiAdi");
            TextBox VergiDairesi = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtVergiDairesi");
            TextBox VergiNo = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtVergiNo");
            TextBox Telefon = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtTelefon");
            TextBox Adres = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtAdres");

            bool sonuc = BayiGuncelle(Convert.ToInt32(Bayi_id.Text), KullaniciAdi.Text, Sifre.Text, YetkiliAdi.Text, YetkiliSoyadi.Text, BayiAdi.Text, VergiDairesi.Text, VergiNo.Text, Telefon.Text, Adres.Text);
            if (sonuc)
            {
                GridView1.EditIndex = -1;
                DataGetir();
            }
        }

        private bool BayiGuncelle(int bayino, string kullaniciadi, string sifre, string yetkiliadi, string yetkilisoyadi, string bayiadi, string vergidairesi, string vergino, string telefon, string adres)
        {
            bool sonuc = false;
            SqlCommand cmd = new SqlCommand("Update KurumsalUyeler set KKullanici_adi=@KKullanici_adi,Sifre=@Sifre,K_ad=@K_ad,K_soyad=@K_soyad,Kurum_ad=@Kurum_ad,Vergi_dairesi=@Vergi_dairesi,Vergi_numarasi=@Vergi_numarasi,Telefon=@Telefon,Adres=@Adres where Kurum_id=@Kurum_id", cnn);
            cmd.Parameters.AddWithValue("@KKullanici_adi", kullaniciadi);
            cmd.Parameters.AddWithValue("@Sifre", sifre);
            cmd.Parameters.AddWithValue("@K_ad", yetkiliadi);
            cmd.Parameters.AddWithValue("@K_soyad", yetkilisoyadi);
            cmd.Parameters.AddWithValue("@Kurum_ad", bayiadi);
            cmd.Parameters.AddWithValue("@Vergi_dairesi", vergidairesi);
            cmd.Parameters.AddWithValue("@Vergi_numarasi", vergino);
            cmd.Parameters.AddWithValue("@Telefon", telefon);
            cmd.Parameters.AddWithValue("@Adres", adres);
            cmd.Parameters.AddWithValue("@Kurum_id", bayino);
            try
            {
                if (cnn.State == ConnectionState.Closed)
                {
                    cnn.Open();
                }
                sonuc = Convert.ToBoolean(cmd.ExecuteNonQuery());
            }
            catch (SqlException ex)
            {
                string hata = ex.Message;
            }
            finally
            {
                cnn.Close();
            }
            return sonuc;
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;//seçili satır editlenecekse yakala
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int bayino = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);//tıklanan satırdaki kategorinosu
            bool sonuc = BayiSil(bayino);
            if (sonuc)
            {
                DataGetir();
            }
        }

        private bool BayiSil(int bayino)
        {

            bool sonuc = false;
            SqlCommand cmd = new SqlCommand("Delete from KurumsalUyeler where Kurum_id=@Kurum_id", cnn);
            cmd.Parameters.AddWithValue("@Kurum_id", bayino);
            try
            {
                if (cnn.State == ConnectionState.Closed)
                {
                    cnn.Open();
                }
                sonuc = Convert.ToBoolean(cmd.ExecuteNonQuery());
            }
            catch (SqlException ex)
            {
                string hata = ex.Message;
            }
            finally
            {
                cnn.Close();
            }
            return sonuc;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            GridView1.EditIndex = -1;//seçili indeks bırktı
            DataGetir();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Cancel")
            {
                GridView1.ShowFooter = false;
                DataGetir();
            }
        }
    }
}