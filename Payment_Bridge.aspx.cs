using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project_1
{
    public partial class Payment_Bridge : System.Web.UI.Page
    {
        ConCls ob = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        { 
           string acd = "select AC_Table.AccoNo,AC_Table.Account_Type,Bill.Bill_Total From AC_Table join Bill on AC_Table.User_Id = Bill.User_Id";
            SqlDataReader dr = ob.Fn_DataReader(acd);
            while (dr.Read())
            {
                Label4.Text = dr["AccoNo"].ToString();
                Label5.Text = dr["Account_Type"].ToString();
                Label7.Text = dr["Bill_Total"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Bank_Payment.ServiceClient obj = new Bank_Payment.ServiceClient();
            string s = obj.BalanceCheck(Label4.Text);

            if (Convert.ToInt32(s) > Convert.ToInt32(Label7.Text))
            {
                int newbal = Convert.ToInt32(s) - Convert.ToInt32(Label7.Text);
                string success = obj.BalanceUpdate(Label4.Text, Convert.ToString(newbal));
                if (success == "1")
                {
                    Label8.Text = "payment successfull";
                    string str = "update Order_Tab set Order_Status='paid' where User_Id=" + Session["userid"] + "";
                   // string str = "update Order_Tab set Order_Status='paid' where User_Id=1";
                    ob.Fn_Nonquery(str);

                    string str1 = "update Bill set Bill_Status='paid' where User_Id="+Session["userid"]+"";
                   // string str1 = "update Bill set Bill_Status='paid' where User_Id=1";
                    ob.Fn_Nonquery(str1);


                    string sel = "select Max(Cart_Id) from Order_Tab";
                    string maxcid = ob.Fn_Scalar(sel);
                    int maxid = Convert.ToInt32(maxcid);
                    for (int i = 1; i <= maxid; i++)
                    {
                        int pid = 0, qty = 0, new_stk = 0;
                        string sel1 = "select Product_Id,Quantity from Order_Tab where Cart_Id=" + i + "";
                        SqlDataReader dr = ob.Fn_DataReader(sel1);
                        while (dr.Read())
                        {
                            pid = Convert.ToInt32(dr["Product_Id"].ToString());
                            qty = Convert.ToInt32(dr["Quantity"].ToString());

                        }
                        string sel2 = "select Product_Stock from Product where Product_Id=" + pid + "";
                        string stock = ob.Fn_Scalar(sel2);
                        int stk = Convert.ToInt32(stock);
                        new_stk = stk - qty;
                        string upt1 = "update Product set Product_Stock='" + Convert.ToString(new_stk) + "' where Product_Id=" + pid + "";
                        int j = ob.Fn_Nonquery(upt1);
                        string sel3 = "select Product_Stock from Product";
                        string upstk = ob.Fn_Scalar(sel3);
                        if (upstk == "0")
                        {
                            string upt2 = "update Product set Product_Stock='Out Of Stock' and set Product_Status='Unavailable' where Product_Id=" + pid + "";
                            ob.Fn_Nonquery(upt2);
                        }

                    }

                   }
                }
                else
                {
                    Label8.Text = "Insufficient Balance";
                }



            }
        }
    }

