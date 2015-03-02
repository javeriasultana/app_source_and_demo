using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace DatePickerDemo
{
    public partial class register : System.Web.UI.Page
    {
        string x = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            this.TextBox5.Enabled = false;
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {

            if (RadioButton3.Checked == true)
            {
                this.TextBox5.Enabled = true;
            }
            x = "Home";
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            x = "Office";
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            x = "Male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            x = "Female";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(s);

            SqlCommand cmd = new SqlCommand("select * from buyer where username='" + this.TextBox1.Text + "'", con);
            cmd.Parameters.AddWithValue("@username", this.TextBox1.Text);
            cmd.Connection = con;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == false)
            {



                SqlConnection con1 = new SqlConnection(s);

                SqlCommand cmd1 = new SqlCommand("insert into buyer values('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.TextBox3.Text + "','" + this.TextBox4.Text + "','" + this.TextBox5.Text + "','" + x + "','" + this.TextBox6.Text + "','" + this.TextBox7.Text + "')", con);

                cmd1.Connection = con1;
                con1.Open();
                cmd1.ExecuteNonQuery();
                Response.Redirect("login.aspx");
            }
            else
            {
                this.Label10.Text = "The User with the Same Susername is already Registered";
            }
        }
        }
    }
