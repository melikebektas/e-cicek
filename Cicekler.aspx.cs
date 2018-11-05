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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from OnayliCicek ", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = dt.DefaultView;
            pds.AllowPaging = true;
            pds.PageSize=6;
            int sayfa;
            if (Request.QueryString["sayfa"] != null)
            {
                sayfa =Convert.ToInt32(Request.QueryString["sayfa"]);

            }
            else
            {

                sayfa=1;

            }

            pds.CurrentPageIndex = sayfa - 1;
         for(int i = 1; i <= pds.PageCount; i++)
            {
                HyperLink hyper = new HyperLink();
                hyper.Text = i.ToString();
                hyper.NavigateUrl = "Cicekler.aspx?sayfa=" + i.ToString();
                Panel1.Controls.Add(hyper);


            }

            Repeater1.DataSource = pds;
            Repeater1.DataBind();
            con.Close();

        }
    }
}