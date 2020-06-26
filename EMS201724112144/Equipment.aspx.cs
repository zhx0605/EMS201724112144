using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EMS201724112144.Models;

namespace EMS201724112144
{
    public partial class Equipment : System.Web.UI.Page
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
                case "设备编号":
                    var result1 = db.Equipment.Where(m1 => m1.Eqpld.Contains(key));
                    if (result1.Count() == 0)
                    {
                        Label1.Text = "查无此设备";
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
                case "设备名称":
                    var result2 = db.Equipment.Where(m2 => m2.EqpName.Contains(key));
                    if (result2.Count() == 0)
                    {
                        Label1.Text = "查无此设备";
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
                case "购入日期(年)":

                    var result3 = db.Equipment.Where(m3 => m3.DateOfPurchase.Value.Year.ToString() == key);
                    if (result3.Count() == 0)
                    {
                        Label1.Text = "查无此设备";
                        //清空前面查询信息
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
                case "存放位置":
                    var result4 = db.Equipment.Where(m4 => m4.Position.Contains(key));
                    if (result4.Count() == 0)
                    {
                        Label1.Text = "查无此设备";
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
                case "设备负责人姓名":
                    var result5 = from m5 in db.Employee where m5.EmpName.Contains(key) select new { m5.EmpId };
                    int num = result5.Count();
                    if (num >= 1)
                    {
                        Label1.Text = "该名字对应的人有" + result5.Count() + "人" + ("<br>")
                            + "您可以根据员工编号进行查询";

                        GridView1.DataSource = result5.ToList();
                        this.GridView1.DataBind();
                    }

                    else
                    {
                        Label1.Text = "查无此人";
                        GridView1.DataSource = result5.ToList();
                        this.GridView1.DataBind();
                    }
                    break;

                case "设备负责人编号":
                    var result10 = from m10 in db.Equipment where m10.EmpId == TextBox1.Text select m10;
                    if (result10.Count() == 0)
                    {
                        Label1.Text = TextBox1.Text + "不是管理员";
                        GridView1.DataSource = result10.ToList();
                        this.GridView1.DataBind();
                    }
                    else
                    {
                        Label1.Text = "";
                        GridView1.DataSource = result10.ToList();
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Upload.aspx");
        }
    }
}