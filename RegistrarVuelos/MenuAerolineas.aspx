<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuAerolineas.aspx.cs" Inherits="RegistrarVuelos.MenuAerolineas" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menú aerolíneas</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <h1>AEROLÍNEAS</h1>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrarAerolinea.aspx">Registrar Aerolínea
            </asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/RegistrarVuelo.aspx">Registrar Vuelo
            </asp:HyperLink>
        </div>
    </form>
    <style>
    body {
        font-family: Roboto, sans-serif;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        background-color: white;
        color: #333;
    }
    #form1 {
        display: flex;
        justify-content: center;
        padding: 20px;
        border-radius: 8px;
    }

    #container {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    h1 {
        font-size: 24px;
        margin-bottom: 20px;
        text-align: center;
    }
    a {
        color: #fff;
        background-color: #6c757d;
        text-decoration: none;
        text-align: center;
        text-transform: uppercase;
        font-size: 20px;
        display: block;
        width: 100%;
        padding: 10px 20px;
        margin: 10px 0;
        border-radius: 2%;
    }
    a:hover {
        background-color: #5a6268;
        transition: 1s;
    }
    </style>
    </body>
    </html>
