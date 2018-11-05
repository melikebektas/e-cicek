using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
namespace AspCicekci.kurumsal
{
    public partial class BayiGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime tarih = DateTime.Now;
            Label1.Text = tarih.ToString();

            Button1.Attributes.Add("onmouseover", "this.style.backgroundColor='#AED7FF'"); // mause üzerine gelince rengi değişir
            Button1.Attributes.Add("onmouseout", "this.style.backgroundColor='#FFFFCC'");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string yol = "data source=.;initial catalog=CICEKCIM;integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            con.Open();
            string ad = TextBox1.Text;
            string sifre = TextBox2.Text;

            SqlCommand com = new SqlCommand(" select * from KurumsalUyeler where KKullanici_adi='" + ad + "' and Sifre = '" + sifre + "'", con);
            SqlDataReader oku = com.ExecuteReader();
            if (oku.Read())
            {

                Session.Add("kullanici", ad);
                Session.Add("kullanici", sifre);
                Session["adi"] = TextBox1.Text;
                Session["sifre"] = TextBox2.Text;
                Response.Write("hosgeldin");
                Response.Redirect("Bayi.aspx");
            }

            else
            {
                Response.Write("<script>alert('Kullanıcı adı veya şifre hatalı')</script>");
            }
        }
    }
}