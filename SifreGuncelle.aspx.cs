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
    public partial class SifreGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            con.Open();
            Label1.Text = Session["kullanici"].ToString();
           

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("UyelikBilgileri.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            con.Open();


            SqlCommand com = new SqlCommand("update BireyselUyeler set Sifre=@Sifre where Kullanici_adi='" + Label1.Text + "'", con);

            com.Parameters.AddWithValue("@Sifre", TextBox2.Text);


            com.ExecuteNonQuery();
            Response.Write(" <script>alert('Şifreniz başarıyla güncellenmiştir.')</script>");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("SifreGuncelle.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("BireyselKargoTakibi.aspx");
        }
    }
}