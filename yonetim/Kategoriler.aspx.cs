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
    public partial class Kategoriler : System.Web.UI.Page
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
            SqlDataAdapter adp = new SqlDataAdapter("Select Kategori_id,Kategori from Kategoriler", cnn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Cancel")
            {
                GridView1.ShowFooter = false;
                DataGetir();
            }
            if (e.CommandName == "Insert")
            {
                TextBox Kategori = (TextBox)GridView1.FooterRow.FindControl("txtYeniKategoriAdi");
                bool sonuc = KategoriEkle(Kategori.Text);
                if (sonuc)
                {
                    GridView1.EditIndex = -1;
                    DataGetir();
                }
            }
        }

        private bool KategoriEkle(string kategoriadi)
        {
            bool sonuc = false;
            SqlCommand cmd = new SqlCommand("Insert Into Kategoriler (Kategori) values (@Kategori)", cnn);
            cmd.Parameters.AddWithValue("@Kategori", kategoriadi);
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

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;//seçili satır editlenecekse yakala
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Kategori_id = (Label)GridView1.Rows[e.RowIndex].FindControl("lblKategoriNo");
            TextBox KategoriAdi = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtKategoriAdi");
            bool sonuc = KategoriGuncelle(Convert.ToInt32(Kategori_id.Text), KategoriAdi.Text);
            if (sonuc)
            {
                GridView1.EditIndex = -1;
                DataGetir();
            }
        }

        private bool KategoriGuncelle(int kategorino, string kategoriadi)
        {
            bool sonuc = false;
            SqlCommand cmd = new SqlCommand("Update Kategoriler set Kategori=@KategoriAdi where Kategori_id = @kategorino", cnn);
            cmd.Parameters.AddWithValue("@KategoriAdi", kategoriadi);
            cmd.Parameters.AddWithValue("@kategorino", kategorino);
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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int kategorino = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);//tıklanan satırdaki kategorinosu
            bool sonuc = KategoriSil(kategorino);
            if (sonuc)
            {
                DataGetir();
            }
        }

        private bool KategoriSil(int kategorino)
        {
            bool sonuc = false;
            SqlCommand cmd = new SqlCommand("Delete from Kategoriler where Kategori_id = @kategorino", cnn);
            cmd.Parameters.AddWithValue("@kategorino", kategorino);
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

        protected void imgEkle_Click(object sender, ImageClickEventArgs e)
        {
            GridView1.ShowFooter = true;
            DataGetir();
        }
    }
}