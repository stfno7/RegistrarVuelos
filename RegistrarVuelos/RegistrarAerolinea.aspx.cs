using System;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrarVuelos
{
    public partial class RegistrarAerolinea : System.Web.UI.Page
    {
        private string logFilePath = HttpContext.Current.Server.MapPath("~/App_Data/log.txt");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnregistrar_Onclick(object sender, EventArgs e)
        {
            if (TextBox1.Text != string.Empty)
            {
                SqlDataSource1.Insert();
                LogOperation("Insertar", TextBox1.Text);
                GridView1.DataBind();
            }
        }
        private void LogOperation(string operationType, string detail)
        {
            string logEntry = $"{DateTime.Now}: {operationType} - {detail}\n";
            File.AppendAllText(logFilePath, logEntry);
        }
    }
}
