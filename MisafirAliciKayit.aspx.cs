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
    public partial class MisafirSatis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label4.Text = Session["toplamfiyat"].ToString();
                DropDownList1.Items.Add("");
                DropDownList1.Items.Add("09:00");
                DropDownList1.Items.Add("10:00");
                DropDownList1.Items.Add("11:00");
                DropDownList1.Items.Add("12:00");
                DropDownList1.Items.Add("13:30");
                DropDownList1.Items.Add("14:00");
                DropDownList1.Items.Add("15:00");
                DropDownList1.Items.Add("16:00");
                DropDownList1.Items.Add("17:00");
                DropDownList1.Items.Add("17:30");
                DropDownList1.Items.Add("18:45");
                DropDownList1.Items.Add("19:00");
                DropDownList1.Items.Add("20:00");
                DropDownList1.Items.Add("21:00");
                DropDownList1.Items.Add("21:30");

                string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                SqlConnection con3 = new SqlConnection(yol);
                string id = Request.QueryString["OnayliCicek_id"];
                //SqlCommand com3 = new SqlCommand("select Stokk_id from Stokk where Cicekk_id=" + id + "", con);
                Label5.Text = id;
                Label5.Visible = false;
                con3.Open();
                string cicekadi = "select * from OnayliCicek where OnayliCicek_id=" + Label5.Text + "";

                SqlCommand com3 = new SqlCommand(cicekadi, con3);

                SqlDataReader dr2 = com3.ExecuteReader();

                if (dr2.Read())
                {
                    Label3.Text = dr2["OnayliCicek_adi"].ToString();

                }

                dr2.Close();


            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            SqlConnection con2 = new SqlConnection(yol);
            SqlConnection con3 = new SqlConnection(yol);
          


            con2.Open();
            con.Open();
            con3.Open();
            string stokid = "select * from Stokk where Cicekk_id=" + Label5.Text + "";
            string siparisbilgileri = "insert into MisafirSiparisBilgilerii(MSiparis_Kodu,MStok_id,Mail,MTeslimat_adresi,MTeslimat_zamani,MTeslimat_notu,MTeslimat_kisi,MTeslimat_telefonu,MToplam_fiyat,MKargo_durumu) values(@MSiparis_Kodu,@MStok_id,@Mail,@MTeslimat_adresi,@MTeslimat_zamani,@MTeslimat_notu,@MTeslimat_kisi,@MTeslimat_telefonu,@MToplam_fiyat,@MKargo_durumu)";
            string misafir = "insert into MisafirBilgileri(Telefon,Ad,Soyad,Adres,Mail)values(@Telefon,@Ad,@Soyad,@Adres,@Mail)";
            SqlCommand com1 = new SqlCommand(siparisbilgileri, con);
            SqlCommand com2 = new SqlCommand(stokid, con2);
            SqlCommand com3 = new SqlCommand(misafir,con3);
            SqlDataReader dr = com2.ExecuteReader();

            if (dr.Read())
            {
                Label5.Text = dr["Stokk_id"].ToString();
                Label5.Visible = false;

            }

            dr.Close();

            
          
            com1.Parameters.AddWithValue("@MSiparis_Kodu", txtsiparis.Text);
            com1.Parameters.AddWithValue("@MStok_id",Label5.Text);
            com1.Parameters.AddWithValue("@Mail", txtmail.Text);
            com1.Parameters.AddWithValue("@MTeslimat_adresi", txtadress.Text);
            com1.Parameters.AddWithValue("@MTeslimat_zamani", Convert.ToDateTime(txttar.Text + " " + DropDownList1.Text));
            com1.Parameters.AddWithValue("@MTeslimat_notu", txtalıcınot.Text);
            com1.Parameters.AddWithValue("@MTeslimat_kisi", txtisimsoy.Text);
            com1.Parameters.AddWithValue("@MTeslimat_telefonu", txttelefon.Text);
            com1.Parameters.AddWithValue("@MToplam_fiyat", Label4.Text);
            com1.Parameters.AddWithValue("@MKargo_durumu", "");


            com1.ExecuteNonQuery();
            com3.Parameters.AddWithValue("@Telefon", txttel.Text);
            com3.Parameters.AddWithValue("@Ad", txtad.Text);
            com3.Parameters.AddWithValue("@Soyad", txtsoy.Text);
            com3.Parameters.AddWithValue("@Adres", txtadress.Text);
            com3.Parameters.AddWithValue("@Mail", txtmail.Text);
            com3.ExecuteNonQuery();

            con.Close();

            con2.Close();
            con3.Close();

            Response.Redirect("OdemeSayfası.aspx?q=" + Label4.Text + "");



        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth || e.Day.Date < DateTime.Now)
            {

                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.AliceBlue;


            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txttar.Text = Calendar1.SelectedDate.ToShortDateString();
        }
    }
}