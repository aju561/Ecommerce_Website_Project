using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project_1
{
    public partial class View_User_Details : System.Web.UI.Page
    {
        ConCls ob = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Bind_Grid();
        }
        public void Bind_Grid()
        {
            string sel = "select * from User_Tab";
            DataSet ds = ob.Fn_DataSet(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind_Grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            GridView1.EditIndex = -1;
            Bind_Grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);

            TextBox txtstat = (TextBox)GridView1.Rows[i].Cells[11].Controls[0];
          
            string strup = "update User_Tab set User_Status='" + txtstat.Text + "' where User_Id=" + getid + "";
            ob.Fn_Nonquery(strup);
            GridView1.EditIndex = -1;
            Bind_Grid();
        }
    }
}