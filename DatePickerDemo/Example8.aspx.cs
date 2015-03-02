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
    public partial class Example8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "Page load time: " + DateTime.Now.ToString();
        }

        protected void DatePicker2_DateChanged(object sender, DatePickerControl.DateChangedEventArgs e)
        {
            Label1.Text = "Postback, DateChanged event: " + e.Date.ToShortDateString();
        }
    }
}