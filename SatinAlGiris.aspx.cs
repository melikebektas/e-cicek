using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AspCicekci
{
    public partial class SatinAlGiris : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
            string id = Request.QueryString["OnayliCicek_id"];
            Label3.Text = id;
            Label3.Visible = false;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            con.Open();

            string ad = TextBox1.Text;
            string sifre = TextBox2.Text;

            SqlCommand com = new SqlCommand("select * from BireyselUyeler where Kullanici_adi='" + ad + "' and Sifre='" + sifre + "'", con);
            SqlDataReader oku = com.ExecuteReader();

            if (oku.Read())
            {
                Session.Add("kullanici", ad);
                Response.Redirect("SatisSayfasi.aspx?OnayliCicek_id="+Label3.Text+"");

            }
            else
            {
                Response.Write("<script>alert('Kullanıcı adınız veya şifreniz yanlış giriş başarısız')</script>");

            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SatisSayfasi.aspx?OnayliCicek_id=" + Label3.Text + "");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            Response.Redirect("BireyselUyeKayit.aspx");

        }
    }
}