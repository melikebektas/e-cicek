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
    public partial class BireyselUyeKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("BireyselUyeKayit.aspx");
        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            try { if (TextBox1.Text != "" & TextBox2.Text != "" & TextBox3.Text != "" & TextBox2.Text == TextBox3.Text & CheckBox1.Checked == true)
                {
                    string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                    SqlConnection con = new SqlConnection(yol);
                    con.Open();


                    string sql = "insert into BireyselUyeler(Kullanici_adi,Sifre,Ad,Soyad,Adres,Telefon) values(@Kullanici_adi,@Sifre,@Ad,@Soyad,@Adres,@Telefon)";
                    SqlCommand com = new SqlCommand(sql, con);
                    com.Parameters.AddWithValue("@Kullanici_adi", TextBox1.Text);
                    com.Parameters.AddWithValue("@Sifre", TextBox2.Text);
                    com.Parameters.AddWithValue("@Ad", TextBox4.Text);
                    com.Parameters.AddWithValue("@Soyad", TextBox5.Text);
                    com.Parameters.AddWithValue("@Adres", TextBox6.Text);
                    com.Parameters.AddWithValue("@Telefon", TextBox7.Text);
                    com.ExecuteNonQuery();
                    con.Dispose();
                    Response.Write("<script>alert('Kayıt başarılı sisteme giriş yapabilirsiniz')</script>");

                }
                else
                {
                    Response.Write("<script>alert('Gerekli alanları boş bıraktınız ya da şifreler eşleşmedi kayıt başarısız')</script>");

                }
            }
            catch
            {

                Response.Write("<script>alert('Önceden böyle bir kayıt bulunmaktadır.')</script>");
            }
} 
      
        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("KurumsalUyeKayit.aspx");
        }
    }
}