using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspCicekci.yonetim
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection("data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                pnl_yorum.Visible = false;
                pnl_YorumOnayli.Visible = false;


                baglan.Open();
                SqlCommand cmdyorum = new SqlCommand("Select Yorum_id,Cicek_id,Yorum,Kullanici_adi from Yorum where Onay_durumu=0", baglan);

                SqlDataReader dryorum = cmdyorum.ExecuteReader();
                dtOnayli.DataSource = dryorum;
                dtOnayli.DataBind();
                baglan.Close();
                //
                baglan.Open();
                SqlCommand cmdonayli = new SqlCommand("Select Yorum_id,Cicek_id,Yorum,Kullanici_adi from Yorum where Onay_durumu=1", baglan);
                SqlDataReader dronayli = cmdonayli.ExecuteReader();
                DataList2.DataSource = dronayli;
                DataList2.DataBind();
                baglan.Close();
            }
        }

        protected void btn_Arti_Click(object sender, EventArgs e)
        {
            pnl_yorum.Visible = true;
        }

        protected void btn_Eksi_Click(object sender, EventArgs e)
        {
            pnl_yorum.Visible = false;
        }

        protected void btn_ArtiYorum_Click(object sender, EventArgs e)
        {
            pnl_YorumOnayli.Visible = true;
        }

        protected void btn_EksiYorum_Click(object sender, EventArgs e)
        {
            pnl_YorumOnayli.Visible = false;
        }
    }
}