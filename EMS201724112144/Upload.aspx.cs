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
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cnstr = @"Data Source=(LocalDB)\MSSQLLocalDB;" + "AttachDbFilename=|DataDirectory|Database1.mdf;" + "Integrated Security=True";
            if (FileUpload1.HasFile)
            {
                //指定上传文件在服务器上的保存路径
                string savePath = Server.MapPath("~/img/equipment/");

                //检查服务器上是否存在这个物理路径，如果不存在则创建
                if (!System.IO.Directory.Exists(savePath))
                {
                    System.IO.Directory.CreateDirectory(savePath);
                }

                savePath = savePath + "\\" + FileUpload1.FileName;
                FileUpload1.SaveAs(savePath);

                //显示图片名字
                LabMsg.Text = string.Format("<a href='upload/{0}'>upload/{0}</a>", FileUpload1.FileName);
                //图片路径
                this.img.Src = "img/equipment/" + FileUpload1.FileName;
                //存入数据库路径
                string sqlimgsrc = this.img.Src;
                Label2.Text = "存入数据库的路径为" + sqlimgsrc;


                try
                {
                    using (SqlConnection cn = new SqlConnection())
                    {
                        cn.ConnectionString = cnstr;
                        cn.Open();
                        string sqlstr = "UPDATE [dbo].[Equipment] SET EqpImg=@eqpimg  WHERE Eqpld=@eid";
                        // 建立 SqlCommand 对象 cmd
                        SqlCommand cmd = new SqlCommand(sqlstr, cn);
                        cmd.Parameters.Add(new SqlParameter("@eid", SqlDbType.NChar));


                        cmd.Parameters.Add(new SqlParameter("@eqpimg", SqlDbType.NVarChar));

                        cmd.Parameters["@eid"].Value = TextBox1.Text;
                        cmd.Parameters["@eqpimg"].Value = sqlimgsrc;

                        cmd.ExecuteNonQuery();
                        Label1.Text = "上传成功";
                    }
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                }
            }
            else
            {
                LabMsg.Text = "你还没有选择上传文件!";
            }
        }
    }
}