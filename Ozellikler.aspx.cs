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
    public partial class Ozellikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                Label7.Visible = false;
                
                string id = Request.QueryString["OnayliCicek_id"];
                Label7.Text = id;
                string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                SqlConnection con = new SqlConnection(yol);
                SqlConnection con2 = new SqlConnection(yol);
                string sorgu = "Select * from OnayliCicek where OnayliCicek_id=@id";
                string sorgu2 = "Select * from Stokk where Cicekk_id=@id";
                SqlCommand cmd = new SqlCommand(sorgu, con);
                SqlCommand cmd2 = new SqlCommand(sorgu2, con2);
                cmd.Parameters.AddWithValue("@id", id);
                cmd2.Parameters.AddWithValue("@id", id);
                con.Open();
                con2.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                SqlDataReader dr2 = cmd2.ExecuteReader();
                if (dr.Read())
                {
                    Image1.ImageUrl = dr["OnayliCicek_resim"].ToString();
                    Label3.Text = dr["OnayliCicek_renk"].ToString();
                    Label4.Text = dr["OnayliCicek_boyu"].ToString();
                    Label5.Text = dr["OnayliCicek_anlami"].ToString();

                }

                if (dr2.Read())
                {

                    Label6.Text = dr2["Fiyatt"].ToString() ;
                    string fiyat = Label6.Text;
                    Session.Add("Fiyatt", fiyat);
                }


                dr.Close();
                dr2.Close();

                SqlConnection con3 = new SqlConnection(yol);
                con3.Open();
                string sorgu3 = "Select * from Yorum where Cicek_id=@id and Onay_durumu=1";
                SqlCommand cmd3 = new SqlCommand(sorgu3, con);
                cmd3.Parameters.AddWithValue("@id", id);
                SqlDataReader dr3 = cmd3.ExecuteReader();
                Repeater1.DataSource = dr3;
                Repeater1.DataBind();
               

               

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["kullanici"] != null)
            {
                string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                SqlConnection con = new SqlConnection(yol);
                string ad = Session["kullanici"].ToString();
                string id = Request.QueryString["OnayliCicek_id"];
                string yorum = "insert into Yorum(Cicek_id,Yorum,Onay_durumu,Kullanici_adi) values(@Cicek_id,@Yorum,@Onay_durumu,@Kullanici_adi)";
                SqlCommand com1 = new SqlCommand(yorum, con);
                com1.Parameters.AddWithValue("@Cicek_id", id);
                com1.Parameters.AddWithValue("@Yorum", txtYorum.Text);
                com1.Parameters.AddWithValue("@Kullanici_adi", ad);
                com1.Parameters.AddWithValue("@Onay_durumu", "0");
                con.Open();
                com1.ExecuteNonQuery();
                Response.Write("<script>alert('Yorumunuz başarılı bir şekilde sistme kaydedildi.')</script>");

                con.Close();

            }

            else
            {
                string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                SqlConnection con = new SqlConnection(yol);
                string ad = "misafir";
                string id = Request.QueryString["OnayliCicek_id"];
                string stokid="select Stokk_id from Stokk where Cicek_id=@id";
                string yorum = "insert into Yorum(Cicek_id,Yorum,Onay_durumu,Kullanici_adi) values(@Cicek_id,@Yorum,@Onay_durumu,@Kullanici_adi)";
                SqlCommand com1 = new SqlCommand(yorum, con);
                com1.Parameters.AddWithValue("@Cicek_id", id);
                com1.Parameters.AddWithValue("@Yorum", txtYorum.Text);
                com1.Parameters.AddWithValue("@Kullanici_adi", ad);
                com1.Parameters.AddWithValue("@Onay_durumu", "0");
                con.Open();
                com1.ExecuteNonQuery();
                Response.Write("<script>alert('Yorumunuz başarılı bir şekilde sistme kaydedildi.')</script>");

                con.Close();



            }



           /* if (Session["kullanici"] != null)
            {
                string stok = "";
                string ad = Session["kullanici"].ToString();
                 SqlCommand comstok = new SqlCommand("select * from BireyselUyeler where Kullanici_adi='" + ad + "' and Sifre='" + sifre + "'", con);
                SqlDataReader dr = comstok.ExecuteReader();
                while (dr.Read())
                {
                    // Eğer veritabanında girdiğimiz şifre var ise bilgilerini değişkenlere atadık..
                   stok = dr["yad"].ToString();
                   

                }
                string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                SqlConnection con = new SqlConnection(yol);
                con.Open();
                string sql = "insert into Yorumlar(Kullanici_adi,Stok_id,Yorum)values(@Kullanici_adi,@Stok_id,@Yorum)";
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@Kullanici_adi",ad );
                com.Parameters.AddWithValue("@Stok_id", TextBox4.Text);
                com.Parameters.AddWithValue("@Yorum", TextBox5.Text);
              
                com.ExecuteNonQuery();
                con.Dispose();
                Response.Write("<script>alert('Kayıt başarılı sisteme giriş yapabilirsiniz')</script>");
                con.Close();

            }

            else
            {
                TextBox2.Enabled = false;
                Button1.Enabled = false;
            }*/
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null)
            {
                Response.Redirect("SatinAlGiris.aspx?OnayliCicek_id=" + Label7.Text + "");
            }

            else
            {
                Response.Redirect("SatisSayfasi.aspx?OnayliCicek_id=" + Label7.Text + "");

            }


        }

        //protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        //{
        //    if (Calendar1.Visible)
        //    {
        //        Calendar1.Visible = false;

        //    }

        //    else
        //    {
        //        Calendar1.Visible = true;
        //    }

           
          


        //}

    }

       
    }
