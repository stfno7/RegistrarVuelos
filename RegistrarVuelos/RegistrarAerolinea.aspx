<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarAerolinea.aspx.cs" Inherits="RegistrarVuelos.RegistrarAerolinea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrar Aerolínea</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server" Text="Registrar Aerolínea:" CssClass="form-label"></asp:Label>
             <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:Button ID="btnregistrar" runat="server" Text="Registrar" OnClick="btnregistrar_Onclick" CssClass="btn btn-primary" />
             <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" DataKeyNames="id" CssClass="table table-striped">
              <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
              </Columns>
             </asp:GridView>

             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="MenuAerolineas.aspx" CssClass="btn btn-link">Menú principal</asp:HyperLink>
 
             <asp:SqlDataSource ID="SqlDataSource1" runat="server"
               ConnectionString="<%$ ConnectionStrings:MiConexion %>"
               DeleteCommand="DELETE FROM `aerolineas` WHERE `id` = @id"
               InsertCommand="INSERT INTO `aerolineas` (`nombre`) VALUES (@nombre)"
               ProviderName="<%$ ConnectionStrings:MiConexion.ProviderName %>"
               SelectCommand="SELECT * FROM `aerolineas`"
               UpdateCommand="UPDATE `aerolineas` SET `nombre` = @nombre WHERE `id` = @id">
                 <InsertParameters>
                   <asp:ControlParameter ControlID="TextBox1" Name="nombre" PropertyName="Text" Type="String" />
                 </InsertParameters>
                  <UpdateParameters>
                   <asp:Parameter Name="nombre" Type="String"></asp:Parameter>
                   <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                  </UpdateParameters>
                  </asp:SqlDataSource>
        </div>
    </form>

    <style>
        body {
            font-family: Roboto, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }

        form {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .form-label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }

        .btn {
            padding: 10px 15px;
            border: none;
            cursor: pointer;
        }

        .btn-primary {
            background-color: #6c757d;
            color: #fff;
        }

        .btn-link {
            display: block;
            text-align: center;
            color: #007bff;
            text-decoration: none;
        }

        .btn-link:hover {
            text-decoration: underline;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #f2f2f2;
        }

        .table th, .table td {
            padding: 12px;
            text-align: left;
            border: 1px solid #dee2e6;
        }
    </style>
</body>
</html>
