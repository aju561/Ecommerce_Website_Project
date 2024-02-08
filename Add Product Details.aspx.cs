using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project_1
{
    public partial class Add_Product_Details : System.Web.UI.Page
    { ConCls ob = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {  if (!IsPostBack)
            {
                string sel = "select Category_Id,Category_Name from Category";
                DataSet ds = ob.Fn_DataSet(sel);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Category_Name";
                DropDownList1.DataValueField = "Category_Id";
              
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "-Select-");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           string s = "~/Category_Images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(s));
         string str = "insert into Product values("+DropDownList1.SelectedItem.Value+",'"+TextBox1.Text+"','"+s+"',"+TextBox2.Text+",'"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"')";

           int i = ob.Fn_Nonquery(str);
            if (i != 0)
            {
                Label8.Text = "Product Successfully Added";
            }
        }
    }
}