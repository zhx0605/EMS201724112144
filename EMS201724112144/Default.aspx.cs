using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112144
{
    public partial class Default : System.Web.UI.Page
    {
        static string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" + "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
        SqlConnection conn = new SqlConnection(sqlconn);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand cmd1 = new SqlCommand("select count(*) from Employee where EmpId=@empid and password=@psd", conn);
            cmd1.Parameters.Add("@empid", SqlDbType.NChar);
            cmd1.Parameters.Add("@psd", SqlDbType.NChar);
            cmd1.Parameters[0].Value = Txtid.Text;
            cmd1.Parameters[1].Value = TxtPsd.Text;
            int count = (int)cmd1.ExecuteScalar();
            if (count == 1)
            {
                Session["UserId"] = Txtid.Text;

                string userid = Session["UserId"].ToString();
                string result = "";
                SqlCommand cmd2 = conn.CreateCommand();
                cmd2.CommandText = "select * from Employee where EmpId = N'" + userid + "'";
                SqlDataReader myReader = cmd2.ExecuteReader();
                while (myReader.Read())
                {
                    result = myReader[4].ToString();
                }

                if (RadioButtonList1.SelectedValue == result)
                {
                    if (RadioButtonList1.SelectedValue == "False")
                    {
                        Response.Redirect("Welcome.aspx");
                    }
                    else
                    {
                        Response.Redirect("Welcome-admin.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('角色选择错误')</script>");
                }
            }

            else
            {
                Response.Write("<script>alert('员工编号或密码错误')</script>");
            }

            conn.Close();
        }
    }
}