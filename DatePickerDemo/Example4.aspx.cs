/*
 *	DatePickerDemo
 *	
 *  A web application for demonstrating various aspects of
 *  the DatePicker control.
 *  Created in 2011 by Simon Baer.
 * 
 *  Licensed under the Code Project Open License (CPOL).
 */

using System;

namespace DatePickerDemo
{
    public partial class Example4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Page loaded: " + DateTime.Now.ToString();
            Label2.Text = "Update panel loaded: " + DateTime.Now.ToString();
        }

        protected void cmdAsync_Click(object sender, EventArgs e)
        {
            Label3.Text = "Thank you for chosing " + DatePicker1.CalendarDateString;
        }
    }
}