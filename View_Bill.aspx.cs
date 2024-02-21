using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Project_1
{
    public partial class View_Bill : System.Web.UI.Page
    {
        ConCls ob = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select Product.Product_Image,Product.Product_Name,Product.Product_Price,Order_Tab.Total_Price,Order_Tab.Quantity from Product join Order_Tab on Order_Tab.Product_Id = Product.Product_Id"; 
                DataSet ds = ob.Fn_DataSet(sel);
                DataList1.DataSource = ds;
                DataList1.DataBind();

               string sel1 = "select Bill_Total from Bill Where User_Id=" + Session["userid"] + "";
                //string sel1 = "select Bill_Total from Bill Where User_Id=1";
                string btot = ob.Fn_Scalar(sel1).ToString();
                Label12.Text = btot;

                string sel2 = "select User_Name,User_Address from User_Tab Where User_Id="+Session["userid"]+"";
                SqlDataReader dr = ob.Fn_DataReader(sel2);
                while(dr.Read())
                {
                    Label14.Text = dr["User_Name"].ToString();
                    Label16.Text = dr["User_Address"].ToString();

                }
               
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Label18.Visible = true;
            Label19.Visible = true;
            Label20.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            Button1.Visible = true;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "insert into AC_Table values('"+TextBox1.Text+"',"+Session["userid"]+",'"+TextBox2.Text+"','"+TextBox3.Text+"')";
            //string str = "insert into AC_Table values('" + TextBox1.Text + "',1,'" + TextBox2.Text + "','" + TextBox3.Text + "')";
            int i = ob.Fn_Nonquery(str);
            if(i!=0)
            {
                string sel = "select AccoNo from AC_Table where User_Id="+Session["userid"]+"";
                //string sel = "select AccoNo from AC_Table where User_Id=1";
                string ano = ob.Fn_Scalar(sel);
                Session["accno"] = ano;
                Response.Redirect("Payment_Bridge.aspx");
            }
        }
    }
}