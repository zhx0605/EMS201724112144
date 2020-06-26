using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112144
{
    public partial class Welcome_admin : System.Web.UI.Page
    {
        static string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" + "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
        SqlConnection conn = new SqlConnection(sqlconn);
        string username = "";
        string rolevalue = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            string userid = Session["UserId"].ToString();
            conn.Open();
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandText = "select * from Employee where EmpId=N'" + userid + "'";
            SqlDataReader myReader = cmd1.ExecuteReader();
            while (myReader.Read())
            {
                username = myReader[2].ToString();
                rolevalue = myReader[4].ToString();
            }

            if (rolevalue == "True")
            {
                Label1.Text = "欢迎使用，您的编号是：" + userid + "，姓名为：" + username + " " + "您当前的身份为：管理员." + ("<br>");
            }
        }
    }
}