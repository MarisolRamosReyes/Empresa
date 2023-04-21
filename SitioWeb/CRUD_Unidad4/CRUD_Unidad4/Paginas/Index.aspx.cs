using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace CRUD_Unidad4.Paginas
{
    public partial class Index : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarTabla();
        }
        void CargarTabla()
        {
            SqlCommand cmd = new SqlCommand("cargar",con);
            cmd.CommandType= CommandType.StoredProcedure;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvusuarios.DataSource = dt;
            gvusuarios.DataBind();
            con.Close();
        }



        protected void BtnRead_Click(object sender, EventArgs e)
        {
            string Id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            Id = selectedrow.Cells[1].Text;
            Response.Redirect("~/Paginas/CRUD.aspx?Id="+ Id +"&op=R");
        }
        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            string Id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            Id = selectedrow.Cells[1].Text;
            Response.Redirect("~/Paginas/CRUD.aspx?Id=" + Id + "&op=U");
        }

        protected void BtnDelate_Click(object sender, EventArgs e)
        {
            string Id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            Id = selectedrow.Cells[1].Text;
            Response.Redirect("~/Paginas/CRUD.aspx?Id=" + Id + "&op=D");
        }
        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Paginas/CRUD.aspx?op=C");
            CargarTabla();
        }
    }
}