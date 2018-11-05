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
    public partial class Filtreleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Visible = false;
                Button1.Visible = false;
                TextBox1.Visible = false;


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection cnn = new SqlConnection("data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI");
            string entity;
            entity = DropDownList1.SelectedItem.Text;
            switch (entity)
            {
                case "Bireysel Üyeler":

                    try
                    {
                        string ara = "Select * from BireyselUyeler where Kullanici_adi like '%" + TextBox1.Text + "%'";
                        SqlDataAdapter adaptor = new SqlDataAdapter(ara, cnn);
                        DataTable tablo = new DataTable();
                        adaptor.Fill(tablo);
                        GridView1.DataSource = tablo;
                        GridView1.DataBind();
                    }
                    catch
                    {
                        Response.Write(" < script > alert('Kontrol Ediniz') </ script > ");
                    }

                    break;

                case "Bayi":

                    try
                    {
                        string kurumsalAra = "Select * from KurumsalUyeler where KKullanici_adi like '%" + TextBox1.Text + "%'";
                        SqlDataAdapter adaptor1 = new SqlDataAdapter(kurumsalAra, cnn);
                        DataTable kurumsaltablo = new DataTable();
                        adaptor1.Fill(kurumsaltablo);
                        GridView1.DataSource = kurumsaltablo;
                        GridView1.DataBind();
                    }
                    catch
                    {
                        Response.Write(" < script > alert('Kontrol Ediniz') </ script > ");
                    }


                    break;
                case "Misafir Bilgileri":

                    try
                    {
                        string mailAra = "Select * from MisafirBilgileri where Mail like '%" + TextBox1.Text + "%'";
                        SqlDataAdapter adaptor2 = new SqlDataAdapter(mailAra, cnn);
                        DataTable mailtablo = new DataTable();
                        adaptor2.Fill(mailtablo);
                        GridView1.DataSource = mailtablo;
                        GridView1.DataBind();
                    }
                    catch
                    {
                        Response.Write(" < script > alert('Kontrol Ediniz') </ script > ");
                    }


                    break;
                case "Sipariş Bilgileri":

                    try
                    {
                        string siparisAra = "Select * from SiparisBilgileri where Kullanici_adi like '%" + TextBox1.Text + "%'";
                        SqlDataAdapter adaptor3 = new SqlDataAdapter(siparisAra, cnn);
                        DataTable siparistablo = new DataTable();
                        adaptor3.Fill(siparistablo);
                        GridView1.DataSource = siparistablo;
                        GridView1.DataBind();
                    }
                    catch
                    {
                        Response.Write(" < script > alert('Kontrol Ediniz') </ script > ");
                    }


                    break;
                case "Misafir Sipariş Bilgileri":

                    try
                    {
                        string msiparisAra = "Select * from MisafirSiparisBilgilerii where Mail like '%" + TextBox1.Text + "%'";
                        SqlDataAdapter adaptor4 = new SqlDataAdapter(msiparisAra, cnn);
                        DataTable msiparistablo = new DataTable();
                        adaptor4.Fill(msiparistablo);
                        GridView1.DataSource = msiparistablo;
                        GridView1.DataBind();
                    }
                    catch
                    {
                        Response.Write(" < script > alert('Kontrol Ediniz') </ script > ");
                    }


                    break;

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Button1.Visible = true;
            TextBox1.Visible = true;
            if (DropDownList1.SelectedItem.Text == "Bireysel Üyeler")
            {
                Label1.Text = "Kullanıcı Adı Giriniz:";
            }
            else if (DropDownList1.SelectedItem.Text == "Bayi")
            {
                Label1.Text = "Kullanıcı Adı Giriniz:";
            }
            else if (DropDownList1.SelectedItem.Text == "Misafir Bilgileri")
            {
                Label1.Text = "Mail Giriniz:";
            }
            else if (DropDownList1.SelectedItem.Value == "siparis")
            {
                Label1.Text = "Kullannıcı Adı Giriniz:";
            }
            else if (DropDownList1.SelectedItem.Text == "Misafir Sipariş Bilgileri")
            {
                Label1.Text = "Mail Giriniz:";
            }

        }
    }
}