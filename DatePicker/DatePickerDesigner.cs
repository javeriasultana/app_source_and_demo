/*
 *	DatePickerControl
 *	
 *  A simple DatePicker control for ASP.NET.
 *  Created in 2011 by Simon Baer, originally based on code by Tan Ling	Wee.
 * 
 *  Licensed under the Code Project Open License (CPOL).
 */

using System;
using System.Web.UI.Design;

namespace DatePickerControl
{
    /// <summary>
    /// This helper class is used by the designer to generate the design time HTML.
    /// </summary>
    public class DatePickerDesigner : ControlDesigner
    {
        /// <summary>
        /// Return the design time HTML of the DatePicker control.
        /// </summary>
        /// <returns></returns>
        public override string GetDesignTimeHtml()
        {
            return "<input type='text' width='40px' value='" + DateTime.Now.ToShortDateString() + "'></input>";
        }
    }
}
