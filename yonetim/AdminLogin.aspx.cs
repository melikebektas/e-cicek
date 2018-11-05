using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspCicekci.yonetim
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateTime tarih = DateTime.Now;
                Label3.Text = tarih.ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            con.Open();
            string ad = txtKullaniciAdi.Text;
            string sifre = txtSifre.Text;

            SqlCommand com = new SqlCommand(" Select * from Yonetim where YKullanici_ad='" + ad + "' and Yonetici_sifre = '" + sifre + "'", con);
            SqlDataReader oku = com.ExecuteReader();
            if (oku.Read())
            {

                Session.Add("kullanici", ad);
                Session.Add("kullanici", sifre);
                Session["adi"] = txtKullaniciAdi.Text;
                Session["sifre"] = txtSifre.Text;
                Response.Write("HOŞGELDİN ADMİN");
                Response.Redirect("Anasayfa.aspx");
            }

            else
            {
                Response.Write("<script>alert('Kullanıcı adı veya şifre hatalı')</script>");
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminEkle.aspx");
        }
    }
}