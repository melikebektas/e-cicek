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
    public partial class AdminEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection cnn = new SqlConnection("data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI");
            SqlCommand cmd = new SqlCommand("Insert Into Yonetim (YKullanici_ad,Yonetici_sifre,Yonetici_ad,Yonetici_soyad) values (@YKullanici_ad,@Yonetici_sifre,@Yonetici_ad,@Yonetici_soyad)", cnn);
            cmd.Parameters.AddWithValue("@YKullanici_ad", txtKullaniciAdi.Text);
            cmd.Parameters.AddWithValue("@Yonetici_sifre", txtSifre.Text);
            cmd.Parameters.AddWithValue("@Yonetici_ad", txtAd.Text);
            cmd.Parameters.AddWithValue("@Yonetici_soyad", txtSoyad.Text);


            try
            {
                if (cnn.State == ConnectionState.Closed)
                {
                    cnn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("AdminLogin.aspx");

                }

            }
            catch (Exception)
            {
                Response.Write("Hatalı Giriş");
            }
            finally
            {
                cnn.Close();
            }

        }
    }
}