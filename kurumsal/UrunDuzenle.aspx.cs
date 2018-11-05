using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace AspCicekci.kurumsal
{
    public partial class UrunDuzenle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            string yol1 = "data source =.;initial catalog=CICEKCIM;integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol1);
            con.Open();
            //  Label1.Text= "ahmet@firma.com";
            // Label2.Text = " Orkide çiçeği";
            /*SqlCommand SqlUpdateCmd = new SqlCommand("Update registration set StudentName=@StudentName, Address=@Address where SerialNo ='" + QRegEditRecordTextBox.Text + "'", SqlConn);
                SqlUpdateCmd.Parameters.AddWithValue("@StudentName", NameTextBox.Text);
                SqlUpdateCmd.Parameters.AddWithValue("@Address", AddressTextBox.Text);*/
            try
            {


                if (FileUpload1.HasFile)
                {
                    string dosyaadi = FileUpload1.FileName;
                    SqlCommand com = new SqlCommand("Update OnayliCicek set OnayliCicek_resim=@Cicek_resim, OnayliCicek_adi=@Cicek_adi,OnayliCicek_renk=@Cicek_renk,OnayliCicek_boyu=@Cicek_boy,OnayliCicek_anlami=@Cicek_anlam,OnayliKategori=@Kategori where OnayliCicek_id in ( select Cicekk_id from Stokk  where KKullanicii_adi='" + TextBox3.Text + "') and OnayliCicek_adi='" + TextBox4.Text + "'", con);
                    SqlCommand com1 = new SqlCommand("Update Stokk set Adett=@Adet, Fiyatt=@Fiyat where Cicekk_id in ( select Cicek_id from Stok  where KKullanici_adi='" + TextBox3.Text + "') and Cicekk_id =(select OnayliCicek_id from OnayliCicek where OnayliCicek_adi='" + TextBox4.Text + "')", con);
                    string yol = Server.MapPath("/Resimler" + FileUpload1.FileName);
                    com.Parameters.AddWithValue("@Cicek_resim", yol);
                    com.Parameters.AddWithValue("@Cicek_adi", txtcicekad.Text);
                    com.Parameters.AddWithValue("@Kategori", DropDownList1.Text);
                    com.Parameters.AddWithValue("@Cicek_renk", txtrenk.Text);
                    com.Parameters.AddWithValue("@Cicek_boy", txtboy.Text);
                    com.Parameters.AddWithValue("@Cicek_anlam", txtanlam.Text);
                    com1.Parameters.AddWithValue("@Adet", Convert.ToInt32(txtstok.Text));
                    com1.Parameters.AddWithValue("@Fiyat", Convert.ToDecimal(txtfiyat.Text));
                    /*com1.Parameters.AddWithValue("@KKullanici_adi", txtad.Text);*/



                    com1.ExecuteNonQuery();

                    com.ExecuteNonQuery();


                    FileUpload1.SaveAs(yol);
                    Response.Write("<script>alert('Resim basarıyla yüklendi')</script>");
                    txtanlam.Text = "";
                    txtboy.Text = "";
                    txtcicekad.Text = "";
                    DropDownList1.Text = "";
                    txtrenk.Text = "";
                    txtstok.Text = "";
                    txtfiyat.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";

                }
                else { Response.Write("<script>alert('Resim yüklemeden gecemezsiniz')</script>"); }
            }

            catch (Exception)
            {
                Response.Write("<script>alert('Aradığınız kategoride çiçek adı veya kullanıcı adı mevcut değil')</script>");

            }
        }
    }
    }
