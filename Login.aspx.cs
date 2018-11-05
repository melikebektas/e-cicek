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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            con.Open();
     
            string ad = TextBox1.Text;
            string sifre = TextBox2.Text;

            SqlCommand com = new SqlCommand("select * from BireyselUyeler where Kullanici_adi='" + ad + "' and Sifre='" + sifre + "' ", con);
            SqlDataReader oku = com.ExecuteReader();

            if (oku.Read())
            {
                Session.Add("kullanici", ad);
                Response.Redirect("Default.aspx");
                oku.Close();
            }
            else
            {
                Response.Write("<script>alert('Kullanıcı adınız veya şifreniz yanlış giriş başarısız')</script>");

            }

         

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BireyselUyeKayit.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}