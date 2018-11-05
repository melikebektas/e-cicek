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
    public partial class MisafirKargoTakibi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;

            string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;

            string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            con.Open();

            SqlCommand com = new SqlCommand("select * from MisafirSiparisBilgilerii where MSiparis_kodu='" + TextBox1.Text + "'", con);
            com.ExecuteNonQuery();

            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Label9.Text = dr["Mail"].ToString();
                Label10.Text = dr["MTeslimat_adresi"].ToString();
                Label11.Text = dr["MTeslimat_zamani"].ToString();
                Label12.Text = dr["MTeslimat_notu"].ToString();
                Label13.Text = dr["MTeslimat_kisi"].ToString();
                Label14.Text = dr["MTeslimat_telefonu"].ToString();
                Label15.Text = dr["MToplam_fiyat"].ToString();
                Label16.Text = dr["MKargo_durumu"].ToString();

            }
            else
            {
                Label9.Text = "herhangi bir kaydınız bulunmamaktadır";
                Label10.Text = "herhangi bir kaydınız bulunmamaktadır";
                Label11.Text = "herhangi bir kaydınız bulunmamaktadır";
                Label12.Text = "herhangi bir kaydınız bulunmamaktadır";
                Label13.Text = "herhangi bir kaydınız bulunmamaktadır";
                Label14.Text = "herhangi bir kaydınız bulunmamaktadır";
                Label15.Text = "herhangi bir kaydınız bulunmamaktadır";
                Label16.Text = "herhangi bir kaydınız bulunmamaktadır";
            }

        }
    }
}