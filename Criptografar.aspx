<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Criptografar.aspx.cs" Inherits="Criptografar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Criptografar</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <h1>Criptografar</h1>
        
            <hr />

            <asp:TextBox ID="txtEmail" runat="server" Width="200"></asp:TextBox>
            <asp:Button ID="btnCriptografar" runat="server" Text="Criptografar" 
                onclick="btnCriptografar_Click" /> <br />
            <asp:TextBox ID="txtEmailCriptografado" runat="server" Width="297" TextMode="MultiLine"></asp:TextBox>

        </form>
    </body>
</html>
