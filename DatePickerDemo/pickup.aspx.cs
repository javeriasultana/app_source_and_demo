using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DatePickerDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.TextBox1.Text = DateTime.Now.ToLongTimeString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(s);

            SqlCommand cmd = new SqlCommand("insert into weight values('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.DatePicker1.AutoPostBack + "')", con);

            cmd.Connection = con;
            con.Open();

            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Record Saved  *** Click  OK to see the confirmation above')</script>");
            string var1, var2, var3;
            var1 = TextBox1.Text;
            var2 = TextBox2.Text;
            var3 = DatePicker1.CalendarDate.ToString();
            Response.Write("=========*******========");
            Response.Write("You have selected time of Pickup ");
            Response.Write("=====*******=====");
            Response.Write(var1);
            Response.Write("=========*******========");
            Response.Write("You Have selected Weight of package ");
            Response.Write("=========*******========");
            Response.Write(var2);
            Response.Write("=========*******========");
            Response.Write("You have selected Date of Pickup ");
            Response.Write("=========*******========");
            Response.Write(var3);
            Response.Write("=========*******========");

           // this.TextBox1.Text = "";
          //  this.TextBox2.Text = "";
            
        }
    }
}