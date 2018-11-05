using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
namespace AspCicekci
{
    public partial class MailGonder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;

            string yol = "data source=DESKTOP-H0I06TG; initial catalog=CICEKCIM; integrated security=SSPI";
            SqlConnection con = new SqlConnection(yol);
            con.Open();
            string kullaniciadi = TextBox2.Text;

            SqlCommand com = new SqlCommand("select * from BireyselUyeler where Kullanici_adi=@kullaniciadi", con);
            com.Parameters.AddWithValue("@kullaniciadi", kullaniciadi);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Label3.Text = dr["Sifre"].ToString();


            }

           
        }

        protected void btnMail_Click(object sender, EventArgs e)
        {
           
            try
            {
                MailMessage mesajım = new MailMessage();
                SmtpClient istemci = new SmtpClient();
                istemci.Credentials = new System.Net.NetworkCredential("cicekcim2017@gmail.com", "cicekcim.123");
                istemci.Port = 587;
                istemci.Host = "smtp.gmail.com";
                istemci.EnableSsl = true;
                mesajım.To.Add(TextBox2.Text);
                mesajım.From = new MailAddress("cicekcim2017@gmail.com");
                mesajım.Body = "Şifreniz: " + Label3.Text + "";

                istemci.Send(mesajım);

                Response.Write("Mail başarıyla gönderilmiştir.");

            }



            catch
            {
                Response.Write("Mail Gönderilemedi.");
            }

           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        { 
            Response.Redirect("Default.aspx");

        }
    }
}