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
    public partial class Urunler : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                DataGetir();

            }
        }

        private void DataGetir()
        {

            SqlDataAdapter adp = new SqlDataAdapter("Select OnayliCicek_id,OnayliCicek_resim,OnayliCicek_adi,OnayliCicek_renk,OnayliCicek_boyu,OnayliCicek_anlami,OnayliKategori from OnayliCicek", cnn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;//seçili satır editlenecekse yakala
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int cicekno = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);//tıklanan satırdaki kategorinosu
            bool sonuc = UrunSil(cicekno);
            if (sonuc)
            {
                DataGetir();
            }
        }

        private bool UrunSil(int cicekno)
        {
            bool sonuc = false;
            SqlCommand cmd = new SqlCommand("Delete from OnayliCicek where OnayliCicek_id = @cicekno", cnn);
            cmd.Parameters.AddWithValue("@cicekno", cicekno);
            try
            {
                if (cnn.State == ConnectionState.Closed)
                {
                    cnn.Open();
                }
                sonuc = Convert.ToBoolean(cmd.ExecuteNonQuery());
            }
            catch (SqlException ex)
            {
                string hata = ex.Message;
            }
            finally
            {
                cnn.Close();
            }
            return sonuc;
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Cicek_id = (Label)GridView1.Rows[e.RowIndex].FindControl("lbl_Cicekid");
            TextBox CicekResim = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_cicekResim");
            TextBox CicekAdi = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_CicekAdi");
            TextBox CicekRenk = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_CicekRenk");
            TextBox CicekBoyu = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtCicekBoyu");
            TextBox CicekAnlami = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_CicekAnlami");
            TextBox Kategoriler = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtKategori");
            bool sonuc = UrunGuncelle(Convert.ToInt32(Cicek_id.Text), CicekResim.Text, CicekAdi.Text, CicekRenk.Text, CicekBoyu.Text, CicekAnlami.Text, Kategoriler.Text);
            if (sonuc)
            {
                GridView1.EditIndex = -1;
                DataGetir();
            }
        }

        private bool UrunGuncelle(int cicekid, string cicekresim, string cicekadi, string cicekrenk, string cicekboyu, string cicekanlami, string kategoriler)
        {
            bool sonuc = false;
            SqlCommand cmd = new SqlCommand("Update OnayliCicek set OnayliCicek_resim=@Cicek_resim,OnayliCicek_adi=@Cicek_adi,OnayliCicek_renk=@Cicek_renk,OnayliCicek_boyu=@Cicek_boyu,OnayliCicek_anlami=@Cicek_anlami,OnayliKategori=@Kategori where OnayliCicek_id = @cicekno", cnn);
            cmd.Parameters.AddWithValue("@Cicek_resim", cicekresim);
            cmd.Parameters.AddWithValue("@Cicek_adi", cicekadi);
            cmd.Parameters.AddWithValue("@Cicek_renk", cicekrenk);
            cmd.Parameters.AddWithValue("@Cicek_boyu", cicekboyu);
            cmd.Parameters.AddWithValue("@Cicek_anlami", cicekanlami);
            cmd.Parameters.AddWithValue("@Kategori", kategoriler);
            cmd.Parameters.AddWithValue("@cicekno", cicekid);

            try
            {
                if (cnn.State == ConnectionState.Closed)
                {
                    cnn.Open();
                }
                sonuc = Convert.ToBoolean(cmd.ExecuteNonQuery());
            }
            catch (SqlException ex)
            {
                string hata = ex.Message;
            }
            finally
            {
                cnn.Close();
            }
            return sonuc;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;//seçili indeks bırktı
            DataGetir();
        }
    }
}