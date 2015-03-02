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
using System.Web.UI.WebControls;

namespace DatePickerDemo
{
    public partial class Example7 : System.Web.UI.Page
    {
        private DatePickerControl.DatePicker dp1;
        private DatePickerControl.DatePicker dp2;

        protected void Page_Load(object sender, EventArgs e)
        {
            dp1 = new DatePickerControl.DatePicker();
            dp2 = new DatePickerControl.DatePicker();

            Table tbl = new Table();
            tbl.Rows.Add(new TableRow());
            tbl.Rows.Add(new TableRow());
            tbl.Rows[0].Cells.Add(new TableCell());
            tbl.Rows[0].Cells.Add(new TableCell());
            tbl.Rows[0].Cells[0].Text = "Date 1:";
            tbl.Rows[0].Cells[1].Controls.Add(dp1);

            tbl.Rows[1].Cells.Add(new TableCell());
            tbl.Rows[1].Cells.Add(new TableCell());
            tbl.Rows[1].Cells[0].Text = "Date 2:";
            tbl.Rows[1].Cells[1].Controls.Add(dp2);

            PlaceHolder1.Controls.Add(tbl);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblResult.Text = "You have chosen " + dp1.CalendarDate.ToShortDateString() + " and " + dp2.CalendarDate.ToShortDateString();
        }
    }
}