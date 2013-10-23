<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_h1vtewrz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>538712_277073479037300_121003354_n.jpg</title>
        <link rel="Stylesheet" href="structure.css" />
        <link rel="shortcut icon" href="images/icone.ico" />
        <meta name="robots" content="noindex" />
    </head>
    <body>
        <form id="form1" runat="server">
            <div id="wrapper">
                <div id="header">
                    <h1>
                        <a href="https://www.facebook.com.br/">
                            Logotipo
                        </a>
                    </h1>

                    <div class="login">
                        <ul>
                            <li>
                                <label for="email">E-mail ou telefone</label>
                                <asp:TextBox ID="txtEmail" runat="server" TabIndex="1" />
                            </li>
                            <li>
                                <label for="password">Senha</label>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" TabIndex="2" />
                            </li>
                            
                            <li>                           
                                <asp:Button ID="btnEntrar" runat="server" Text="Entrar" TabIndex="4" 
                                    onclick="btnEntrar_Click" />
                            </li>
                        </ul>

                        <ul>
                            <li>
                                <input id="persist" type="checkbox" checked="1" value="1" name="persist" />
                                <label for="persist" class="persist">Mantenha-me conectado</label>
                            </li>
                            <li>
                                <a href="#">Esqueceu sua senha?</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="content">
                    <div class="sideLeft">
                
                    </div>
                    <div class="sideRight">
                
                    </div>
                </div>
                <div id="footer">
            
                </div>
            </div>
        </form>
    </body>
</html>
