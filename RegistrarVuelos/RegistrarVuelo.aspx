<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarVuelo.aspx.cs" Inherits="RegistrarVuelos.RegistrarVuelo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrar vuelos</title>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <h1>Registrar Vuelo</h1>
        
        <asp:Label ID="Label1" runat="server" Text="Número de Vuelo:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        
        <asp:Label ID="Label2" runat="server" Text="Aerolínea"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="nombre" DataValueField="id" DataSourceID="SqlDataSource1"></asp:DropDownList>
       
        <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
        
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" DataKeyNames="id" CssClass="gridview">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
            </Columns>
        </asp:GridView>
       
        <asp:Label ID="Label3" runat="server" Text="Filtrar Según Aerolínea:"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="nombre" DataValueField="id" DataSourceID="SqlDataSource1"></asp:DropDownList>
        
        <asp:Button ID="Button2" runat="server" Text="Filtrar" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Desfiltrar" OnClick="Button3_Click" />
        
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="MenuAerolineas.aspx" CssClass="hyperlink">Menú principal</asp:HyperLink>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MiConexion %>"
            ProviderName="<%$ ConnectionStrings:MiConexion.ProviderName %>"
            SelectCommand="SELECT `id`, `nombre` FROM `aerolineas`">
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MiConexion %>"
            DeleteCommand="DELETE FROM `vuelos` WHERE `id` = @id"
            InsertCommand="INSERT INTO `vuelos` (`numeroVuelo`, `idAerolinea`) VALUES (@vuelo, @idAerolinea)"
            ProviderName="<%$ ConnectionStrings:MiConexion.ProviderName %>"
            SelectCommand="SELECT v.*, a.nombre AS nombreAerolinea FROM `Vuelos` v JOIN `aerolineas` a ON v.idAerolinea = a.id"
            UpdateCommand="UPDATE `vuelos` SET `numeroVuelo` = @numeroVuelo, `idAerolinea` = @idAerolinea WHERE `id` = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="vuelo" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="idAerolinea" PropertyName="SelectedValue" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="numeroVuelo" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="idAerolinea" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</form>


<style>
        body {
            font-family: Roboto, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        #form1 {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin: 15px 0 5px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .gridview {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .gridview th,
        .gridview td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        .gridview th {
            background-color: #ddd;
            color: white;
        }

        .gridview tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .gridview tr:hover {
            background-color: #ddd;
        }

        .hyperlink {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #0094ff;
            text-decoration: none;
        }

        .hyperlink:hover {
            text-decoration: underline;
        }
</style>

</body>
</html>
