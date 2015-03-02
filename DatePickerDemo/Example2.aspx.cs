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
using System.Web.UI;

namespace DatePickerDemo
{
    public partial class Example2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblResult.Text = "Thank you.";
            }
            else
            {
                lblResult.Text = "";
            }
        }
    }
}