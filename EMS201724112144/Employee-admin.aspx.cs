using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EMS201724112144.Models;

namespace EMS201724112144
{
    public partial class Employee_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Database1Entities db = new Database1Entities();
            string key = TextBox1.Text;
            switch (RadioButtonList1.SelectedValue)
            {
                case "员工编号":
                    var result1 = db.Employee.Where(m1 => m1.EmpId.Contains(key));
                    if (result1.Count() == 0)
                    {
                        Label1.Text = "根据此员工编号，查无此员工";
                        //清空前面查询信息
                        GridView1.DataSource = result1.ToList();
                        this.GridView1.DataBind();
                    }
                    else
                    {
                        Label1.Text = "";
                        GridView1.DataSource = result1.ToList();
                        this.GridView1.DataBind();
                    }
                    break;
                case "员工姓名":
                    var result2 = db.Employee.Where(m2 => m2.EmpName.Contains(key));
                    if (result2.Count() == 0)
                    {
                        Label1.Text = "根据此员工姓名，查无此员工";
                        //清空前面查询信息
                        GridView1.DataSource = result2.ToList();
                        this.GridView1.DataBind();
                    }
                    else
                    {
                        Label1.Text = "";
                        GridView1.DataSource = result2.ToList();
                        this.GridView1.DataBind();
                    }
                    break;
                case "是否为管理员(True/False)":
                    var result3 = db.Employee.Where(m3 => m3.IsAdmin.ToString() == key);
                    if (key == "True")
                    {
                        Label1.Text = "管理员有" + result3.Count() + "人" + ("<br/>");
                        GridView1.DataSource = result3.ToList();
                        this.GridView1.DataBind();
                    }
                    else
                    {
                        Label1.Text = "一般员工有" + result3.Count() + "人" + ("<br/>");
                        GridView1.DataSource = result3.ToList();
                        this.GridView1.DataBind();
                    }
                    break;
                case "员工所属部门编号":
                    var result4 = db.Employee.Where(m4 => m4.DptId.Contains(key));
                    if (result4.Count() == 0)
                    {
                        Label1.Text = "根据此信息，查无此部门";
                        //清空前面查询信息
                        GridView1.DataSource = result4.ToList();
                        this.GridView1.DataBind();
                    }
                    else
                    {
                        Label1.Text = "";
                        GridView1.DataSource = result4.ToList();
                        this.GridView1.DataBind();
                    }
                    break;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            Label1.Text = "";
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}