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
    public partial class Example6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdEdit_Click(object sender, EventArgs e)
        {
            fvPerson.ChangeMode(FormViewMode.Edit);
            cmdSave.Enabled = true;
            cmdEdit.Enabled = false;
        }

        protected void cmdSave_Click(object sender, EventArgs e)
        {
            fvPerson.UpdateItem(false);
            cmdSave.Enabled = false;
            cmdEdit.Enabled = true;
        }
    }
}