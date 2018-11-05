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
    public partial class UyelikBilgileri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                Label1.Visible = false;
                string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                SqlConnection con = new SqlConnection(yol);
                con.Open();
                Label1.Text = Session["kullanici"].ToString();

                //SqlCommand com = new SqlCommand("select * from BireyselUyeler where Kullanici_adi='" + Label1.Text + "'", con);
                //SqlDataReader dr = com.ExecuteReader();
                //if (dr.Read())
                //{

                //    TextBox1.Text = dr["Kullanici_adi"].ToString();
                //    TextBox2.Text = dr["Ad"].ToString();
                //    TextBox3.Text = dr["Soyad"].ToString();
                //    TextBox4.Text = dr["Adres"].ToString();
                //    TextBox5.Text = dr["Telefon"].ToString();

                //}
          
 

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            con.Open();

            SqlCommand com = new SqlCommand("update BireyselUyeler set Kullanici_adi=@Kullanici_adi, Ad=@Ad, Soyad=@Soyad, Adres=@Adres, Telefon=@Telefon where Kullanici_adi='" + Label1.Text + "'", con);
            com.Parameters.AddWithValue("@Kullanici_adi", TextBox1.Text);
            com.Parameters.AddWithValue("@Ad", TextBox2.Text);
            com.Parameters.AddWithValue("@Soyad", TextBox3.Text);
            com.Parameters.AddWithValue("@Adres", TextBox4.Text);
            com.Parameters.AddWithValue("@Telefon", TextBox5.Text);

            com.ExecuteNonQuery();
          
            Response.Write(" <script>alert('Bilgileriniz başarıyla güncellenmiştir.')</script>");
            Response.Redirect("Login.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SifreGuncelle.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UyelikBilgileri.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("BireyselKargoTakibi.aspx");
        }
    }
}