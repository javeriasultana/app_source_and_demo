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
    public partial class Example1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            if (!DatePicker1.IsValidDate)
            {
                lblResult.Text = "Error, \"" + DatePicker1.CalendarDateString + "\" is not a valid date!";
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Font.Bold = true;
            }
            else
            {
                lblResult.Text = "Thank you for choosing " + DatePicker1.CalendarDate.ToLongDateString() + ".";
                lblResult.ForeColor = System.Drawing.Color.Black;
                lblResult.Font.Bold = false;
            }
        }

        protected void chkEnabled_CheckedChanged(object sender, EventArgs e)
        {
            DatePicker1.Enabled = chkEnabled.Checked;
        }
    }
}