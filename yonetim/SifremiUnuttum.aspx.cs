using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspCicekci.yonetim
{
    public partial class SifremiUnuttum : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string gizli = ("Select * from Yonetim where  YKullanici_ad=@YKullanici_ad");
                SqlCommand kmtgizli = new SqlCommand(gizli, conn);

                kmtgizli.Parameters.AddWithValue("@YKullanici_ad", txtSifre.Text);
                SqlDataReader dr = kmtgizli.ExecuteReader();

                if (dr.Read())

                {
                    Label3.Text = dr["Yonetici_sifre"].ToString();

                    conn.Close();

                    Response.Write("<script>alert('Şifreniz:'+'" + Label3.Text + "')</script>");


                }
                else
                {
                    Response.Write("<script>alert('Kullanıcı adı hatalı')</script>");
                }
            }
            catch
            {
                Response.Redirect("Hatalı Giriş");
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
}