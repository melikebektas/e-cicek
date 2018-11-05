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
    public partial class Siparisler : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnl_kayitliMusteri.Visible = false;
                pnl_MisafirSiparis.Visible = false;
                pnl_Mail.Visible = false;
                

            }
        }

      

        protected void btn_Arti_Click(object sender, EventArgs e)
        {
            pnl_kayitliMusteri.Visible = true;
        }

        protected void btn_Eksi_Click(object sender, EventArgs e)
        {
            pnl_kayitliMusteri.Visible = false;
        }

        protected void btn_ArtiYorum_Click(object sender, EventArgs e)
        {
            pnl_MisafirSiparis.Visible = true;
        }

        protected void btn_EksiYorum_Click(object sender, EventArgs e)
        {
            pnl_MisafirSiparis.Visible = false;
            pnl_Mail.Visible = false;

        }



        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            pnl_Mail.Visible = true;
        }
       
       
        protected void btnMail_Click(object sender, EventArgs e)
        {
            try
            {

                Session["sipariskodu"] = txt_siparisKodu.Text;
                Session["mail"] = txt_Mail.Text;

                Session["zaman"] = txtTeslimatZamani.Text;

                Session["kisi"] = txt_TeslimatKisi.Text;
                Session["telefon"] = txt_teslimatTelefonu.Text;
                Session["fiyat"] = txt_ToplamFiyat.Text;
                Session["mesaj"] = txt_yorum.Text;
                Session["kargo"] = TextBox1.Text;
                Response.Redirect("MailSend.aspx");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('İçerikleri Düzgün Giriniz')</script>");
            }
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt_siparisKodu.Text = GridView3.SelectedRow.Cells[1].Text;
            txt_Mail.Text = GridView3.SelectedRow.Cells[3].Text;
            txtTeslimatZamani.Text = GridView3.SelectedRow.Cells[5].Text;
            txt_TeslimatKisi.Text = GridView3.SelectedRow.Cells[7].Text;
            txt_teslimatTelefonu.Text = GridView3.SelectedRow.Cells[10].Text;
            txt_ToplamFiyat.Text = GridView3.SelectedRow.Cells[9].Text;
            TextBox1.Text = GridView3.SelectedRow.Cells[8].Text;
            
        }

      
    }
}