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
    public partial class Arama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string kelime = Request.QueryString["q"].ToString();
                string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
                SqlConnection con = new SqlConnection(yol);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select * from OnayliCicek where OnayliCicek_adi like '%" + kelime + "%'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
                //    PagedDataSource pds = new PagedDataSource();
                //    pds.DataSource = dt.DefaultView;
                //    pds.AllowPaging = true;
                //    pds.PageSize = 1;
                //    int currentpage;
                //    if (Request.QueryString["q"] != null)
                //    {
                //        currentpage = Int32.Parse(Request.QueryString["q"]);

                //    }
                //    else
                //    {

                //        currentpage = 1;

                //    }

                //    pds.CurrentPageIndex = currentpage - 1;
                //    Label3.Text = "Sayfa" + currentpage + "/" + pds.PageCount;

                //    if (!pds.IsFirstPage)
                //    {
                //        HyperLink1.NavigateUrl = "Arama.aspx?q=" + (currentpage - 1);

                //    }

                //    if (!pds.IsLastPage)
                //    {
                //        HyperLink2.NavigateUrl = "Arama.aspx?q=" + (currentpage + 1);

                //    }
                //    Repeater1.DataSource = pds;
                //    Repeater1.DataBind();



               }
            }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
           

        }
    }
}