using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
namespace AspCicekci.kurumsal
{
    public partial class Raporlama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cnn = new SqlConnection("data source=.;initial catalog=CICEKCIM;integrated security=SSPI");
                //string ara = "select * from Stok where KKullanici_adi like '%" + TextBox1.Text + "%'";
                string ara1 = "select OnayliCicek_adi,OnayliCicek_resim,OnayliCicek_renk,OnayliCicek_boyu,OnayliCicek_anlami,OnayliKategori from OnayliCicek where  OnayliCicek_id in(select Cicekk_id from Stokk where KKullanicii_adi='" + TextBox1.Text + "')";
                SqlDataAdapter adaptor = new SqlDataAdapter(ara1, cnn);
                DataTable tablo = new DataTable();
                adaptor.Fill(tablo);
                GridView1.DataSource = tablo;
                GridView1.DataBind();

            }
            catch (Exception)
            {
                Response.Write("<script>alert('Bir hata olustu')</script>");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                Response.ClearContent();
                Response.AppendHeader("content-disposition", "attachement;filename=stokListe.xls");
                Response.ContentType = "application/excel";
                StringWriter sw = new StringWriter();
                HtmlTextWriter ht = new HtmlTextWriter(sw);
                GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF");
                foreach (TableCell tableCell in GridView1.HeaderRow.Cells)
                {
                    tableCell.Style["background-color"] = "#FFFFFF";
                }
                foreach (GridViewRow gridViewRow in GridView1.Rows)
                {
                    gridViewRow.BackColor = System.Drawing.Color.White;
                    foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
                    {
                        gridViewRowTableCell.Style["background-color"] = "#FFFFFF";
                    }
                }
                GridView1.RenderControl(ht);
                Response.Write(sw.ToString());
                Response.End();
            }

            catch (Exception)
            {
                Response.Write("<script>alert('stok bulunamadı')</script>");
            }


        }
    }
}