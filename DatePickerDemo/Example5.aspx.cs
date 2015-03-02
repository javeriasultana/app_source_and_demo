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
    public partial class Example5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            lblResult.Text = "Thank you.";
            lblDate1.Text = "\"" + DatePicker1.CalendarDateString + "\" is " + (DatePicker1.IsValidDate ? "valid" : "invalid") + " => local date: " + DatePicker1.CalendarDate.ToShortDateString();
            lblDate2.Text = "\"" + DatePicker2.CalendarDateString + "\" is " + (DatePicker2.IsValidDate ? "valid" : "invalid") + " => local date: " + DatePicker2.CalendarDate.ToShortDateString();
            lblDate3.Text = "\"" + DatePicker3.CalendarDateString + "\" is " + (DatePicker3.IsValidDate ? "valid" : "invalid") + " => local date: " + DatePicker3.CalendarDate.ToShortDateString();
            lblDate4.Text = "\"" + DatePicker4.CalendarDateString + "\" is " + (DatePicker4.IsValidDate ? "valid" : "invalid") + " => local date: " + DatePicker4.CalendarDate.ToShortDateString();
            lblDate5.Text = "\"" + DatePicker5.CalendarDateString + "\" is " + (DatePicker5.IsValidDate ? "valid" : "invalid") + " => local date: " + DatePicker5.CalendarDate.ToShortDateString();
        }
    }
}