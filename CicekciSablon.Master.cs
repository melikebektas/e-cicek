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
    public partial class CicekciSablon : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {/* <ItemTemplate>
                  < img src = "images/cicekler/cicekler<%#Eval("OnayliCicek_resim") %>" />
               </ ItemTemplate >*/
            if (!IsPostBack)
            {
                ImageButton4.Visible = false;
                ImageButton6.Visible = false;
                Label1.Visible = false;
                if (Session["kullanici"] != null)
                {
                    string ad = Session["kullanici"].ToString();

                    Label2.Text = "hoşgeldiniz" ;
                    Label1.Text = ad;
                    ImageButton1.Visible = false;
                    ImageButton4.Visible = true;
                    ImageButton6.Visible = true;
                    ImageButton2.Visible = false;
                    
                }


                else
                {
                    Label2.Text = " ";
                    Label2.Visible = false;
                    ImageButton1.Visible = true;
                    ImageButton4.Visible = false;
                    ImageButton6.Visible = false;
                    ImageButton2.Visible = true;
                }
            }
        }


      
        

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

       

        protected void ImageButton4_Click1(object sender, ImageClickEventArgs e)
        {
            
           
          
            Session["kullanici"] = null;
            Label2.Text = " ";
            Label2.Visible = false;
            ImageButton1.Visible = true;
            ImageButton4.Visible = false;
            ImageButton2.Visible = true;
            ImageButton6.Visible = false;
          Response.Redirect("Login.aspx");
           
          

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KargoTakibi.aspx");
;            //string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            //SqlConnection con = new SqlConnection(yol);
            //con.Open();
            //string kullaniciadi = Label1.Text;
            //SqlCommand com = new SqlCommand("select Kargo_durumu from SiparisBilgileriDeneme where Kullanici_adi='" + kullaniciadi + "' ", con);
            //SqlDataReader oku = com.ExecuteReader();

            //if (oku.Read())
            //{
            //    string kargodurumu = oku["Kargo_durumu"].ToString();
            //    Response.Write("<script>alert('" + kargodurumu + "')</script>");

            //}
            //else
            //{
            //    Response.Write("<script>alert('Kargo durumunuz yok')</script>");

            //}
            //oku.Close();
            //com.Dispose();
            //con.Close();
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {

            Response.Redirect("Arama.aspx?q=" + TextBox1.Text.Trim());



        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("UyelikBilgileri.aspx");
        }



        /*    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
            {
                Response.Redirect("Login.aspx");

            }

            protected void ImageButton5_Click1(object sender, ImageClickEventArgs e)
            {
                Response.Write("<script>alert('Başarılı Çıkış yaptınız')</script>");
                Session["kullanici"] = null;
                Label9.Text = " ";
                Label9.Visible = false;
                ImageButton1.Visible = true;
                ImageButton5.Visible = false;
                Label8.Text = "Giriş";
            }

            protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
            {
                string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                SqlConnection con = new SqlConnection(yol);
                con.Open();
                string kullaniciadi = Label5.Text;
                SqlCommand com = new SqlCommand("select Kargo_durumu from SiparisBilgileriDeneme where Kullanici_adi='" + kullaniciadi + "' ", con);
                SqlDataReader oku = com.ExecuteReader();

                if (oku.Read())
                {
                    string kargodurumu = oku["Kargo_durumu"].ToString();
                    Response.Write("<script>alert('" + kargodurumu + "')</script>");

                }
                else
                {
                    Response.Write("<script>alert('Kargo durumunuz yok')</script>");

                }
                oku.Close();
                com.Dispose();
                con.Close();
            }*/
    }
}