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
    public partial class SiparisOnaylama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label11.Text = Session["kullanici"].ToString();
            string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            string cicekadi = "select * from SiparisBilgilerii where =" + Label11.Text + "";

            SqlCommand com = new SqlCommand(cicekadi, con);

            SqlDataReader dr = com.ExecuteReader();

            if (dr.Read())
            {
                Label3.Text = dr["OnayliCicek_adi"].ToString();
                Label3.Text = dr["OnayliCicek_adi"].ToString();
                Label3.Text = dr["OnayliCicek_adi"].ToString();
                Label3.Text = dr["OnayliCicek_adi"].ToString();
                Label3.Text = dr["OnayliCicek_adi"].ToString();
                Label3.Text = dr["OnayliCicek_adi"].ToString();
                Label3.Text = dr["OnayliCicek_adi"].ToString();
            }

            dr.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}