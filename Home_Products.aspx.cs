using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project_1
{
    public partial class Home_Products : System.Web.UI.Page
    {
        ConCls ob = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select * from Product where Category_Id=" + Session["hcatid"] + "";
                DataSet ds = ob.Fn_DataSet(sel);
                DataList1.DataSource = ds;
                DataList1.DataBind();
                
            }
        }

        

        protected void ImageButton1_Command1(object sender, CommandEventArgs e)
        {
            int proid = Convert.ToInt32(e.CommandArgument);
            Session["hpid"] = proid;
            Response.Redirect("Home_View_Product.aspx");
        }
    }
}