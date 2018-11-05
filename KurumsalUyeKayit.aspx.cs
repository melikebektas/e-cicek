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
    public partial class KurumsalUyeKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try {
                if (TextBox1.Text != "" & TextBox2.Text != "" & TextBox3.Text != "" & TextBox7.Text != "" & TextBox8.Text != "" & TextBox2.Text == TextBox3.Text & CheckBox1.Checked == true)
                {
                    string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                    SqlConnection con = new SqlConnection(yol);
                    con.Open();


                    string sql = "insert into KurumsalUyeler(KKullanici_adi,Sifre,K_ad,K_soyad,Kurum_ad,Vergi_dairesi,Vergi_numarasi,Telefon,Adres) values(@KKullanici_adi,@Sifre,@K_ad,@K_soyad,@Kurum_ad,@Vergi_dairesi,@Vergi_numarasi,@Telefon,@Adres)";
                    SqlCommand com = new SqlCommand(sql, con);
                    com.Parameters.AddWithValue("@KKullanici_adi", TextBox1.Text);
                    com.Parameters.AddWithValue("@Sifre", TextBox2.Text);
                    com.Parameters.AddWithValue("@K_ad", TextBox4.Text);
                    com.Parameters.AddWithValue("@K_soyad", TextBox5.Text);
                    com.Parameters.AddWithValue("@Kurum_ad", TextBox11.Text);
                    com.Parameters.AddWithValue("@Vergi_dairesi", TextBox7.Text);
                    com.Parameters.AddWithValue("@Vergi_numarasi", TextBox8.Text);
                    com.Parameters.AddWithValue("@Telefon", TextBox9.Text);
                    com.Parameters.AddWithValue("@Adres", TextBox10.Text);
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("BireyselUyeKayit.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("KurumsalUyeKayit.aspx");
        }
    }
}