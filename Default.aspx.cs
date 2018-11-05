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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            con.Open();
            string sorgu1 = "Select top 5 * from OnayliCicek";
            SqlCommand cmd1 = new SqlCommand(sorgu1, con);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            Repeater3.DataSource = dr1;
            Repeater3.DataBind();
            dr1.Close();

            string sorgu2 = "Select top 5  * from OnayliCicek order by OnayliCicek_id desc ";
            SqlCommand cmd2 = new SqlCommand(sorgu2, con);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            Repeater4.DataSource = dr2;
            Repeater4.DataBind();
            
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Cicekler.aspx");


        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("YenilebilirCicekler1.aspx");
        }

        protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Aksesuar.aspx");
        }

        protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MeyveSepeti.aspx");
        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ButikCicekler.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Cicekler1.aspx");
        }
    }
}