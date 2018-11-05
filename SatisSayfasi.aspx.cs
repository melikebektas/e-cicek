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
    public partial class BireyselUyeSatis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label3.Visible = false;
                string id = Request.QueryString["OnayliCicek_id"];
                Label3.Text = id;
                Label4.Text = Session["Fiyatt"].ToString();
                Label5.Text = "0";
                string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                SqlConnection con = new SqlConnection(yol);
                con.Open();
                string sorgu = "Select * from OnayliCicek where OnayliCicek_id=@id";
                SqlCommand cmd = new SqlCommand(sorgu, con);
                cmd.Parameters.AddWithValue("@id", id);


                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Image1.ImageUrl = dr["OnayliCicek_resim"].ToString();


                }


                int a = Convert.ToInt32(Label4.Text);
                int toplam = a;
                Label6.Text = toplam.ToString();


            }

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked == false && RadioButton4.Checked == false && RadioButton5.Checked == false && RadioButton6.Checked == false)
            {
                Label5.Text = "";
            }
            else if (RadioButton1.Checked == true) { Image2.ImageUrl = "images/ekurun/anne.jpg"; Label5.Text = "50"; }
            else if (RadioButton4.Checked == true) { Image2.ImageUrl = "images/ekurun/kuran-ı%20kerim.jpg"; Label5.Text = "150"; }
            else if (RadioButton5.Checked == true) { Image2.ImageUrl =  "images/ekurun/metinli-rakarift.jpg"; Label5.Text = "80"; }
            else if (RadioButton6.Checked == true) { Image2.ImageUrl = "images/ekurun/oscar.jpg"; Label5.Text = "70"; }

            int a = Convert.ToInt32(Label4.Text);
            int b = Convert.ToInt32(Label5.Text);
            int toplam = a+b;
            Label6.Text = toplam.ToString();



        }




        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label5.Text = "0";
            Image2.ImageUrl = "";
            int a = Convert.ToInt32(Label4.Text);
            int toplam = a;
            Label6.Text = toplam.ToString();
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Session.Add("toplamfiyat", Label6.Text);
            if (Session["kullanici"] == null) {

                Response.Redirect("MisafirAliciKayit.aspx?OnayliCicek_id=" + Label3.Text + "");
            }
            else
            {
                Response.Redirect("AliciKayit.aspx?OnayliCicek_id=" + Label3.Text + "");

            }

        }
    }
}