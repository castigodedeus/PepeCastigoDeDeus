using System;

public partial class Criptografar : System.Web.UI.Page
{
    protected void btnCriptografar_Click(object sender, EventArgs e)
    {
        txtEmailCriptografado.Text = Criptografia.Criptografar(txtEmail.Text.Trim(), "#!$a36?@"); 
    }
}