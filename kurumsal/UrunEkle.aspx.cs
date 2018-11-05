using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
namespace AspCicekci.kurumsal
{
    public partial class UrunEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string yol1 = "data source =.;initial catalog=CICEKCIM;integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol1);
            con.Open();


            if (fileekle.HasFile)
            {

                string sql = "insert into OnayliCicek(OnayliCicek_resim,OnayliCicek_adi,OnayliCicek_renk,OnayliCicek_boyu,OnayliCicek_anlami,OnayliKategori) values (@Cicek_resim,@Cicek_adi,@Cicek_renk,@Cicek_boy,@Cicek_anlam,@Kategori) ";
                string sqlstok = "insert into Stokk(Adett,Fiyatt,KKullanicii_adi) values(@Adet,@Fiyat,@KKullanici_adi) ";

                SqlCommand com = new SqlCommand(sql, con);


                SqlCommand com1 = new SqlCommand(sqlstok, con);
                string yol = Server.MapPath("/images/cicekler/cicekler/" + fileekle.FileName);
                com.Parameters.AddWithValue("@Cicek_resim", yol);
                com.Parameters.AddWithValue("@Cicek_adi", txtcicekekle.Text);
                com.Parameters.AddWithValue("@Kategori", DropDownList1.Text);
                com.Parameters.AddWithValue("@Cicek_renk", txteklerenk.Text);
                com.Parameters.AddWithValue("@Cicek_boy", txtcicekboy.Text);
                com.Parameters.AddWithValue("@Cicek_anlam", txttcicekanlam.Text);

             
                com1.Parameters.AddWithValue("@Adet", Convert.ToInt32(txteklestok.Text));
                com1.Parameters.AddWithValue("@Fiyat", Convert.ToDecimal(txteklefiyat.Text));
                com1.Parameters.AddWithValue("@KKullanici_adi", txtad.Text);

                com1.ExecuteNonQuery();

                com.ExecuteNonQuery();


                fileekle.SaveAs(yol);
                Response.Write("<script>alert('Resim basarıyla yüklendi')</script>");
                txtcicekekle.Text = "";
                DropDownList1.Text = "";
                txteklerenk.Text = "";
                txtcicekboy.Text = "";
                txttcicekanlam.Text = "";
                txteklestok.Text = "";
                txteklefiyat.Text = "";
                txtad.Text = "";

            }
            else { Response.Write("<script>alert('Resim yüklemeden gecemezsiniz')</script>"); }
        }

    }
}
