using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspCicekci.yonetim
{
    public partial class AdminDuzenle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label8.Text = "Hoşgeldin";
                Label7.Text = Session["adi"].ToString();
            }
            catch
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {


                string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                SqlConnection con = new SqlConnection(yol);
                con.Open();
                string ad = Label7.Text;



                string sql = ("Update  Yonetim set YKullanici_ad=@YKullanici_ad,Yonetici_sifre=@Yonetici_sifre,Yonetici_ad=@Yonetici_ad,Yonetici_soyad=@Yonetici_soyad where YKullanici_ad='" + ad + "'");
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@YKullanici_ad", txtKullaniciAdi.Text);
                com.Parameters.AddWithValue("@Yonetici_sifre", txtSifre.Text);
                com.Parameters.AddWithValue("@Yonetici_ad", txtAd.Text);
                com.Parameters.AddWithValue("@Yonetici_soyad", txtSoyad.Text);

                Label7.Text = txtKullaniciAdi.Text;





                com.ExecuteNonQuery();
                Response.Redirect("AdminLogin.aspx");
            }
            catch (Exception)
            {

                Response.Write("<script>alert('Kullanıcı adı alanı baska bir kullanıcıya ait')</script>");
            }
        }
    }
}