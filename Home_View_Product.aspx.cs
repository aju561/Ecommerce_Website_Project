using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project_1
{
    public partial class Home_View_Product : System.Web.UI.Page
    {
        ConCls ob = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {

            string sel = "select * from Product where Product_Id=" + Session["hpid"] + "";
           
            SqlDataReader dr = ob.Fn_DataReader(sel);
            while (dr.Read())
            {
                Image1.ImageUrl = dr["Product_Image"].ToString();
                Label1.Text = dr["Product_Name"].ToString();
                Label2.Text = dr["Product_Price"].ToString();
                Label3.Text = dr["Product_Description"].ToString();
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label4.Text = "You Must Login To Add Product To The Cart";
        }
    }
}