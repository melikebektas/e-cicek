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
    public partial class OdemeSayfası : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label4.Visible = false;
                Label5.Visible = false;
                int netfiyat;
                if (Session["kullanici"] != null)
                {
                   
                    Label4.Text = Session["kullanici"].ToString();
                }
                Label3.Text = Request.QueryString["q"];
                HyperLink3.Visible = false;

                DateTime dt = new DateTime(2017, 5, 14);
                DateTime ds = new DateTime(2017, 5, 11);
                DateTime dk = new DateTime(2017, 2, 5);
                if (Session["kullanici"]!=null && ( DateTime.Today == dt || DateTime.Today == ds || DateTime.Today == dk))
                {
                   netfiyat = Convert.ToInt32(Label3.Text) - (Convert.ToInt32(Label3.Text) /2);

                    Label5.Text = netfiyat.ToString();
                }

                else
                {
                    netfiyat = Convert.ToInt32(Label3.Text);
                    Label5.Text = netfiyat.ToString();
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                SqlConnection con = new SqlConnection(yol);
                con.Open();
                string sql = "insert into KartBilgiler(Kartt_numarasi,SKT,CVV) values(@Kartt_numarasi,@SKT,@CVV)";
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@Kartt_numarasi", TextBox2.Text);
                com.Parameters.AddWithValue("@SKT", TextBox3.Text);
                com.Parameters.AddWithValue("@CVV", TextBox4.Text);

                com.ExecuteNonQuery();
                con.Dispose();
                Response.Write("<script>alert('" + Label5.Text + " TL kartınızdan tahsis edilmiştir.')</script>");

                Button1.Visible = false;
                HyperLink3.Visible = true;
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Bilgilerinizi eksik yada hatalı girdiniz.')</script>");

            }



        }

    }
}