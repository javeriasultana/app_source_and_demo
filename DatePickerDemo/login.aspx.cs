using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DatePickerDemo
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(s);

            SqlCommand cmd = new SqlCommand("select * from buyer where username='" + this.TextBox1.Text + "' and password='" + this.TextBox2.Text + "'", con);
            cmd.Parameters.AddWithValue("@username", this.TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", this.TextBox2.Text);
            cmd.Connection = con;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == false)
            {
                this.Label3.Text = "Access Denied";
                this.TextBox1.Text = "";
                this.TextBox2.Text = "";
            }
            else
            {
                Session["uname"] = this.TextBox1.Text;
                Response.Redirect("pickup.aspx");
                //Response.Write("welcome");
                   
            }
            dr.Close();
            con.Close();
        
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
    }
}