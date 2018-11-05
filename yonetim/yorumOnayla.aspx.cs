using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspCicekci.yonetim
{
    public partial class yorumOnayla : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection("data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI");

        string yorumId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yorumId = Request.QueryString["Yorum_id"];
            if (Page.IsPostBack == false)
            {
                baglan.Open();
                SqlCommand cmdgetir = new SqlCommand("Select * from Yorum where Yorum_id='" + yorumId + "'", baglan);
                SqlDataReader drygetir = cmdgetir.ExecuteReader();
                DataTable dtygetir = new DataTable("tablo");
                dtygetir.Load(drygetir);
                DataRow row = dtygetir.Rows[0];
                txt_kisi.Text = row["Kullanici_adi"].ToString();
                txt_yorum.Text = row["Yorum"].ToString();


            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand cmdOnay = new SqlCommand("Update Yorum Set Onay_durumu=1  where Yorum_id='" + yorumId + "'", baglan);
            cmdOnay.ExecuteNonQuery();

            Response.Redirect("Yorumlar.aspx");
        }

        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("Yorumlar.aspx");
        }
    }
}