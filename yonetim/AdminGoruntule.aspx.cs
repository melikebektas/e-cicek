using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspCicekci.yonetim
{
    public partial class AdminGoruntule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label2.Text = "Hoşgeldin";
                Label1.Text = Session["adi"].ToString();
                string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                SqlConnection con = new SqlConnection(yol);
                con.Open();
                string ad = Label1.Text;


                SqlCommand com = new SqlCommand(" select * from Yonetim where YKullanici_ad='" + ad + "'", con);
                SqlDataReader oku = com.ExecuteReader();
                if (oku.Read())
                {

                    string isim = "Kullanıcı Adı:" + oku["YKullanici_ad"].ToString();
                    string isim3 = "Şifre:" + oku["Yonetici_sifre"].ToString();
                    string isim2 = "Ad:" + oku["Yonetici_ad"].ToString();
                    string isim1 = "Soyad:" + oku["Yonetici_soyad"].ToString();

                    ListBox1.Items.Clear();
                    ListBox1.Items.Add(isim);
                    ListBox1.Items.Add(isim3);
                    ListBox1.Items.Add(isim2);
                    ListBox1.Items.Add(isim1);
                    oku.Close();
                }
            }
            catch
            {
                Response.Redirect("AdminLogin.aspx");
            }

        }
    }
}