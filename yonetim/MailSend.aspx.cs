using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspCicekci.yonetim
{
    public partial class MailSend : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lbl_sipariskodu.Text = Session["sipariskodu"].ToString();
            lblmailadresi.Text = Session["mail"].ToString();

            lblTeslimatZamani.Text = Session["zaman"].ToString();

            lblkisi.Text = Session["kisi"].ToString();
            lbltelefon.Text = Session["telefon"].ToString();
            lblfiyat.Text = Session["fiyat"].ToString();
            lblyorum.Text = Session["mesaj"].ToString();
            lblkargo.Text = Session["kargo"].ToString();
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
                mesajım.To.Add(lblmailadresi.Text);
                mesajım.From = new MailAddress("cicekcim2017@gmail.com");
                mesajım.Body = "Sipariş Kodu: " + lbl_sipariskodu.Text + "" + "Teslimat Zamanı: " + lblTeslimatZamani.Text + "" + "Teslimat Kişi: " + lblkisi.Text + "" + "Teslimat Telefonu: " + lbltelefon.Text + "" + "Toplam Fiyat: " + lblfiyat.Text + "" + "Kargo Durumu: " + lblkargo.Text;

                mesajım.Subject = lblyorum.Text;

                istemci.Send(mesajım);

                Response.Write("Mail başarıyla gönderilmiştir.");

            }



            catch (Exception)
            {
                Response.Write("<script>alert('Mail Gönderilemedi')</script>");
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Siparisler.aspx");
        }
    }
}