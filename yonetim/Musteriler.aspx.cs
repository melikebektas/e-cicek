using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspCicekci.yonetim
{
    
    public partial class Musteriler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection("data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI");
            if (!IsPostBack)
            {
                pnl_kayitli.Visible = false;
                pnl_musteri.Visible = false;
                DataGetir();
                DataBagla();



            }

        }

        private void DataBagla()
        {
            SqlConnection cnn = new SqlConnection("data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI");
            SqlDataAdapter adp = new SqlDataAdapter("Select Uye_id,Kullanici_adi,Sifre,Ad,Soyad,Adres,Telefon from BireyselUyeler", cnn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        private void DataGetir()
        {
            SqlConnection cnn = new SqlConnection("data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI");
            SqlDataAdapter madp = new SqlDataAdapter("Select Misafir_id,Telefon,Ad,Soyad,Adres,Mail from MisafirBilgileri", cnn);
            DataTable da = new DataTable();
            madp.Fill(da);
            GridView2.DataSource = da;
            GridView2.DataBind();

        }

        protected void btn_Arti_Click(object sender, EventArgs e)
        {
            pnl_kayitli.Visible = true;
        }

        protected void btn_Eksi_Click(object sender, EventArgs e)
        {
            pnl_kayitli.Visible = false;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int uyeno = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);//tıklanan satırdaki kategorinosu
            bool sonuc = MusteriSil(uyeno);
            if (sonuc)
            {
                DataGetir();
            }
        }

        private bool MusteriSil(int uyeno)
        {
            SqlConnection cnn = new SqlConnection("data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI");
            bool sonuc = false;
            SqlCommand cmd = new SqlCommand("Delete from BireyselUyeler where Uye_id = @uyeno", cnn);
            cmd.Parameters.AddWithValue("@uyeno", uyeno);
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

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int misafirno = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);//tıklanan satırdaki kategorinosu
            bool sonuc = MisafirSil(misafirno);
            if (sonuc)
            {
                DataBagla();
            }
        }

        private bool MisafirSil(int misafirno)
        {
            SqlConnection cnn = new SqlConnection("data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI");
            bool sonuc = false;
            SqlCommand cmd = new SqlCommand("Delete from MisafirBilgileri where Misafir_id = @misafirno", cnn);
            cmd.Parameters.AddWithValue("@misafirno", misafirno);
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

        protected void btn_kayitliEkle_Click(object sender, EventArgs e)
        {
            pnl_musteri.Visible = true;
        }

        protected void btn_kayitliSil_Click(object sender, EventArgs e)
        {
            pnl_musteri.Visible = false;
        }
    }
}