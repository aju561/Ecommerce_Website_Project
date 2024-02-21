using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select count(Registration_Id) from Login where username ='" + TextBox1.Text + "'and password = '" + TextBox2.Text + "'";
            string cid = obj.Fn_Scalar(str);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string str1 = "select Registration_Id from Login where username ='" + TextBox1.Text + "'and password = '" + TextBox2.Text + "'";
                string regid = obj.Fn_Scalar(str1);
                Session["userid"] = regid;
                string str2 = "select Login_Type from Login where username ='" + TextBox1.Text + "'and password = '" + TextBox2.Text + "'";
                string logtype = obj.Fn_Scalar(str2);

                

                if (logtype == "Admin")
                {
                    Label3.Text = "Admin";
                    Response.Redirect("Admin_Home.aspx");
                }
                else if (logtype == "user")
                {
                    string str3 = "select User_Status from User_Tab where User_Id=" + Session["userid"] + "";
                    string logstat = obj.Fn_Scalar(str3);
                    if (logstat == "Active")
                    {
                        Response.Redirect("User_Home.aspx");
                        
                    }
                    else
                        Label3.Text = "User Blocked Error Bridge Access";
                }
            }
        }
    }
}