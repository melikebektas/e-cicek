using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace AspCicekci.kurumsal
{
    public partial class Bayi1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Label2.Text = "hosgeldiniz";
                txtadres.Visible = false;
                txtkurum_ad.Visible = false;
                txtk_ad.Visible = false;
                txtsifre.Visible = false;
                TextBox10.Visible = false;
                txtsoyad.Visible = false;
                txtvergi_d.Visible = false;
                txtvergi_num.Visible = false;
                txt_ad.Visible = false;
                txt_tel.Visible = false;
                Label10.Visible = false;
                Label11.Visible = false;
                Label13.Visible = false;
                Label14.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;
                Label7.Visible = false;
                Label8.Visible = false;
                Label9.Visible = false;
                btnonayla.Visible = false;
                RequiredFieldValidator1.Visible = false;
                RequiredFieldValidator2.Visible = false;
                RequiredFieldValidator3.Visible = false;
                RequiredFieldValidator4.Visible = false;
                RequiredFieldValidator5.Visible = false;
                RequiredFieldValidator6.Visible = false;
                RequiredFieldValidator7.Visible = false;
                RequiredFieldValidator8.Visible = false;
                RequiredFieldValidator9.Visible = false;
                RequiredFieldValidator10.Visible = false;
                CompareValidator1.Visible = false;

                Label1.Text = Session["adi"].ToString();

            }


        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            string yol = "data source=.;initial catalog=CICEKCIM;integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            con.Open();
            string ad = Label1.Text;


            SqlCommand com = new SqlCommand(" select * from KurumsalUyeler where KKullanici_adi='" + ad + "'", con);
            SqlDataReader oku = com.ExecuteReader();
            if (oku.Read())
            {

                string isim = oku["KKullanici_adi"].ToString() + oku["Sifre"].ToString() + oku["K_ad"].ToString();
                string isim3 = oku["Sifre"].ToString() + oku["K_ad"].ToString();
                string isim1 = oku["K_soyad"].ToString() + oku["Vergi_dairesi"].ToString();
                string isim2 = oku["Vergi_numarasi"].ToString() + oku["Telefon"].ToString() + oku["Adres"].ToString();
                ListBox1.Items.Clear();
                ListBox1.Items.Add(isim);
                ListBox1.Items.Add(isim1);
                ListBox1.Items.Add(isim2);
                ListBox1.Items.Add(isim3);
                oku.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtadres.Visible = true;
            txtkurum_ad.Visible = true;
            txtk_ad.Visible = true;
            txtsifre.Visible = true;
            TextBox10.Visible = true;
            txtsoyad.Visible = true;
            txtvergi_d.Visible = true;
            txtvergi_num.Visible = true;
            txt_ad.Visible = true;
            txt_tel.Visible = true;
            Label10.Visible = true;
            Label11.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            btnonayla.Visible = true;
            RequiredFieldValidator1.Visible = true;
            RequiredFieldValidator2.Visible = true;
            RequiredFieldValidator3.Visible = true;
            RequiredFieldValidator4.Visible = true;
            RequiredFieldValidator5.Visible = true;
            RequiredFieldValidator6.Visible = true;
            RequiredFieldValidator7.Visible = true;
            RequiredFieldValidator8.Visible = true;
            RequiredFieldValidator9.Visible = true;
            RequiredFieldValidator10.Visible = true;
            CompareValidator1.Visible = true;
            ListBox1.Visible = true;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("BayiGiris.aspx");
            RequiredFieldValidator1.Visible = false;
            RequiredFieldValidator2.Visible = false;
            RequiredFieldValidator3.Visible = false;
            RequiredFieldValidator4.Visible = false;
            RequiredFieldValidator5.Visible = false;
            RequiredFieldValidator6.Visible = false;
            RequiredFieldValidator7.Visible = false;
            RequiredFieldValidator8.Visible = false;
            RequiredFieldValidator9.Visible = false;
            RequiredFieldValidator10.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {


                string yol = "data source =.; initial catalog = CICEKCIM; integrated security = SSPI";
                SqlConnection con = new SqlConnection(yol);
                con.Open();
                string ad = Label1.Text;



                string sql = ("update  KurumsalUyeler set KKullanici_adi=@KKullanici_adi,Sifre=@Sifre,K_ad=@K_ad,K_soyad=@K_soyad,Kurum_ad=@Kurum_ad,Vergi_dairesi=@Vergi_dairesi,Vergi_numarasi=@Vergi_numarasi,Telefon=@Telefon,Adres=@Telefon where KKullanici_adi='" + ad + "'");
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@KKullanici_adi", txtk_ad.Text);
                com.Parameters.AddWithValue("@K_ad", txt_ad.Text);
                com.Parameters.AddWithValue("@Sifre", txtsifre.Text);
                com.Parameters.AddWithValue("@K_soyad", txtsoyad.Text);
                com.Parameters.AddWithValue("@Kurum_ad", txtkurum_ad.Text);
                com.Parameters.AddWithValue("@Vergi_dairesi", txtvergi_d.Text);
                com.Parameters.AddWithValue("@Vergi_numarasi", txtvergi_num.Text);
                com.Parameters.AddWithValue("@Telefon", txt_tel.Text);
                com.Parameters.AddWithValue("@Adres", txtadres.Text);
                Label1.Text = txtk_ad.Text;
                ListBox1.Items.Clear();
                ListBox1.Items.Add("txtk_ad.Text");

                Label15.Text = "profil düzenleme tamamlandı";


                com.ExecuteNonQuery();
                Response.Redirect("KurumsalLogin.aspx");
            }
            catch (Exception)
            {

                Response.Write("<script>alert('Kullanıcı adı alanı baska bir kullanıcıya ait')</script>");
            }
        }
    }
}