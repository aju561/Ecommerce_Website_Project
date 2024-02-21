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

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int getuid = Convert.ToInt32(e.CommandArgument);
            string upt = "update User_Tab set User_Status='Blocked' where User_Id = " + getuid + "";
            int i = ob.Fn_Nonquery(upt);
            if (i != 0)
            {
                Label1.Text = "Successfully Blocked User";
                Bind_Grid();
            }
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int getuid = Convert.ToInt32(e.CommandArgument);
            string upt = "update User_Tab set User_Status='Active' where User_Id = " + getuid + "";
            int i = ob.Fn_Nonquery(upt);
            if (i != 0)
            {
                Label1.Text = "Successfully Unblocked User";
                Bind_Grid();
            }
        }    
    }
}