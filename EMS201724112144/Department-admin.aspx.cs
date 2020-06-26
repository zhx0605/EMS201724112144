using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EMS201724112144.Models;

namespace EMS201724112144
{
    public partial class Department_admin : System.Web.UI.Page
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
                case "部门编号":
                    var result1 = db.Department.Where(m1 => m1.DptId.Contains(key));
                    if (result1.Count() == 0)
                    {
                        Label1.Text = "根据此部门编号，查询无果";
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
                case "部门名字":
                    var result2 = db.Department.Where(m2 => m2.DptName.Contains(key));
                    if (result2.Count() == 0)
                    {
                        Label1.Text = "根据此部门名字，查询无果";
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
                case "部门主管编号":
                    var result3 = db.Department.Where(m3 => m3.DptAdmin.Contains(key));
                    if (result3.Count() == 0)
                    {
                        Label1.Text = "根据此部门主管编号，查询无果";
                        GridView1.DataSource = result3.ToList();
                        this.GridView1.DataBind();
                    }
                    else
                    {
                        Label1.Text = "";
                        GridView1.DataSource = result3.ToList();
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
    }
}