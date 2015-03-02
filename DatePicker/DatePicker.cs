/*
 *	DatePickerControl
 *	
 *  A simple DatePicker control for ASP.NET.
 *  Created in 2011 by Simon Baer, originally based on code by Tan Ling	Wee.
 * 
 *  Licensed under the Code Project Open License (CPOL).
 */

using System;
using System.ComponentModel;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace DatePickerControl
{
    /// <summary>
    /// This is the main class of the actual control.
    /// </summary>
    [DefaultProperty("Text")]
    [Designer("DatePickerControl.DatePickerDesigner")]
    [ToolboxData("<{0}:DatePicker runat=server></{0}:DatePicker>")]
    [System.Drawing.ToolboxBitmap(typeof(DatePicker), "toolbox.gif")]
    [ValidationPropertyAttribute("CalendarDateString")]
    public class DatePicker : WebControl, INamingContainer,  IPostBackEventHandler
    {
        private TextBox txtDate = new TextBox();
        private Image img = new Image();
        private bool autoPostBack = false;
        private bool allowType = true;
        private bool setFocus = false;
  
        [Description("Fires when the date has been changed and AutoPostBack is set to 'true'.")]
        public event EventHandler<DateChangedEventArgs> DateChanged;
        
        public enum Weekday
        {
            Sunday = 0,
            Monday = 1
        }

        // date format used by the calendar control
        private string dateFormat = CultureInfo.CurrentCulture.DateTimeFormat.ShortDatePattern;

        // day to start week with
        private int startAt = (int)Weekday.Monday;

        #region Public properties

        /// <summary>
        /// Gets or sets whether it is possible to type a date into the text box.
        /// </summary>
        [Category("Behavior")]
        [Description("Whether it is allowed to type in the text box.")]
        [Browsable(true)]
        [DefaultValue(true)]
        public bool AllowType
        {
            get { return allowType; }
            set { allowType = value; }
        }

        /// <summary>
        /// Gets or sets whether a postback is triggered after a date has been selected.
        /// </summary>
        [Category("Behavior")]
        [Description("Whether to trigger a postback when the date has been changed.")]
        [Browsable(true)]
        [DefaultValue(false)]
        public bool AutoPostBack
        {
            get { return autoPostBack; }
            set { autoPostBack = value; }
        }

        /// <summary>
        /// Gets or sets the CSS class to apply to the textbox.
        /// </summary>
        [Category("Appearance")]
        [Description("CSS class name applied to the text box.")]
        [Browsable(true)]
        public string TextCssClass
        {
            get { return txtDate.CssClass; }
            set { txtDate.CssClass = value; }
        }

        /// <summary>
        /// Gets or sets the day to start the week with.
        /// </summary>
        [Category("Appearance")]
        [Description("Day to start week with.")]
        [Browsable(true)]
        [DefaultValue(Weekday.Monday)]
        public Weekday StartWeekWithDay
        {
            get { return (Weekday)startAt; }
            set { startAt = (int)value; }
        }

        /// <summary>
        /// Gets or sets the day to start the week with.
        /// </summary>
        [Category("Appearance")]
        [Description("Width of date text field.")]
        [Browsable(true)]
        public override Unit Width
        {
            get { return txtDate.Width; }
            set { txtDate.Width = value; }
        }

        /// <summary>
        /// Gets or sets the content of the textbox which represents a date.
        /// </summary>
        [Category("Appearance")]
        [Browsable(true)]
        public string CalendarDateString
        {
            get { return txtDate.Text; }
        }

        /// <summary>
        /// Gets or sets a DateTime representation of the currently selected date.
        /// </summary>
        [Category("Appearance")]
        [Bindable(true, BindingDirection.TwoWay)]
        [Browsable(true)]
        public DateTime CalendarDate
        {
            get
            {
                DateTime date;
                if (DateTime.TryParseExact(txtDate.Text, dateFormat, null, System.Globalization.DateTimeStyles.None, out date))
                {
                    return date;
                }
                return DateTime.MinValue;
            }
            set { txtDate.Text = (value == DateTime.MinValue) ? string.Empty : value.ToString(dateFormat); }
        }

        /// <summary>
        /// Gets a flag indicating whether a valid date has been selected.
        /// </summary>
        public bool IsValidDate
        {
            get
            {
                DateTime date;
                return DateTime.TryParseExact(txtDate.Text, dateFormat, null, System.Globalization.DateTimeStyles.None, out date);
            }
        }

        /// <summary>
        /// Gets or sets the date format to use, e.g. "dd.MM.yyyy" or "MM/dd/yyyy".
        /// </summary>
        [Category("Appearance")]
        [Description("Date format, e.g. 'dd.MM.yyyy' or 'MM/dd/yyyy'.")]
        [Browsable(true)]
        public string DateFormat
        {
            get { return dateFormat.Replace("\\/", "/"); }
            set { dateFormat = value.Replace("/", "\\/"); }
        }
        private void ResetDateFormat()
        {
            DateFormat = CultureInfo.CurrentCulture.DateTimeFormat.ShortDatePattern;
        }
        private bool ShouldSerializeDateFormat()
        {
            return (!DateFormat.Equals(CultureInfo.CurrentCulture.DateTimeFormat.ShortDatePattern));
        }

        #endregion

        /// <summary>
        /// Set the focus to the text box control.
        /// </summary>
        public override void Focus()
        {
            setFocus = true;
        }

        /// <summary>
        /// Render CSS and JavaScript includes.
        /// </summary>
        /// <param name="e"></param>
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            if (!Page.ClientScript.IsClientScriptIncludeRegistered(this.GetType(), "js"))
            {
                // add javascript include
                Page.ClientScript.RegisterClientScriptInclude(this.GetType(), "js",
                   Page.ClientScript.GetWebResourceUrl(this.GetType(),
                   "DatePickerControl.Resources.popcalendar.js"));

                string[] imgUrls = new string[] {
                    "DatePickerControl.Resources.drop1.gif",
                    "DatePickerControl.Resources.drop2.gif",
                    "DatePickerControl.Resources.left1.gif",
                    "DatePickerControl.Resources.left2.gif",
                    "DatePickerControl.Resources.right1.gif",
                    "DatePickerControl.Resources.right2.gif",
                    "DatePickerControl.Resources.close.gif",
                    "DatePickerControl.Resources.divider.gif"
                };

                StringBuilder sbStartup = new StringBuilder();
                for (int i = 0; i < 8; i++)
                {
                    sbStartup.AppendFormat("img[{0}] = new Image();\r\n", i);
                    sbStartup.AppendFormat("img[{0}].src = '{1}';\r\n", i, Page.ClientScript.GetWebResourceUrl(this.GetType(), imgUrls[i]));
                }
                sbStartup.AppendLine("initPicker();");

                Page.ClientScript.RegisterStartupScript(this.GetType(), "dtpck_start", sbStartup.ToString(), true);
             
                // localized month names
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < 12; i++)
                {
                    Page.ClientScript.RegisterArrayDeclaration("monthName", "\"" + CultureInfo.CurrentCulture.DateTimeFormat.MonthNames[i] + "\"");
                    Page.ClientScript.RegisterArrayDeclaration("monthAbbr", "\"" + CultureInfo.CurrentCulture.DateTimeFormat.AbbreviatedMonthNames[i] + "\"");
                }

                // localized day abbreviations
                sb = new StringBuilder();
                for (int i = 0; i < 7; i++)
                {
                    Page.ClientScript.RegisterArrayDeclaration("dayName", "\"" + CultureInfo.CurrentCulture.DateTimeFormat.AbbreviatedDayNames[i] + "\"");
                    Page.ClientScript.RegisterArrayDeclaration("dayNameLong", "\"" + CultureInfo.CurrentCulture.DateTimeFormat.DayNames[i] + "\"");
                }

                // add CSS link
                string csslink = "<link href='" +
                   Page.ClientScript.GetWebResourceUrl(this.GetType(), "DatePickerControl.Resources.popcalendar.css") +
                   "' rel='stylesheet' type='text/css' />";
                LiteralControl include = new LiteralControl(csslink);
                Page.Header.Controls.Add(include);
            }

            // define a JavaScript method that triggers a postback. this method will be called
            // from the closeCalendar() method in popcalendar.js.
            if (autoPostBack)
            {
                string pb = "function dateChanged_" + this.UniqueID + "() {" +
                    Page.ClientScript.GetPostBackEventReference(this, "") + "}\r\n";
                Page.ClientScript.RegisterStartupScript(this.GetType(), this.ID, pb, true);
            }
        }

        /// <summary>
        /// Set some properties of the child controls before rendering.
        /// </summary>
        /// <param name="e"></param>
        protected override void OnPreRender(EventArgs e)
        {
            txtDate.Enabled = Enabled;
            img.ImageUrl = Enabled ?
                Page.ClientScript.GetWebResourceUrl(this.GetType(), "DatePickerControl.Resources.calendar.gif") :
                Page.ClientScript.GetWebResourceUrl(this.GetType(), "DatePickerControl.Resources.calendar_disabled.gif");

            if (Enabled)
            {
                string scriptStr = String.Format("javascript:return popUpCalendar(this, document.getElementById('{0}'), '{1}', {2}, {3});",
                    txtDate.ClientID, DateFormat, startAt, autoPostBack ? "true" : "false");
                img.Attributes.Add("onclick", scriptStr);
            }

            if (!allowType)
            {
                txtDate.Attributes.Add("OnKeyPress", "return false;");
            }

            if (setFocus)
            {
                txtDate.Focus();
            }

            base.OnPreRender(e);
        }

        /// <summary>
        /// Render controls.
        /// </summary>
        protected override void CreateChildControls()
        {
            Table tbl = new Table();
            tbl.CellPadding = 0;
            tbl.CellSpacing = 0;
            tbl.BorderWidth = 0;
            tbl.BorderStyle = System.Web.UI.WebControls.BorderStyle.None;
            tbl.Style.Add(HtmlTextWriterStyle.WhiteSpace, "nowrap");
            tbl.Rows.Add(new TableRow());
            tbl.Rows[0].Cells.Add(new TableCell());
            tbl.Rows[0].Cells.Add(new TableCell());

            tbl.Rows[0].Cells[0].VerticalAlign = VerticalAlign.Middle;
            tbl.Rows[0].Cells[0].Style.Add(HtmlTextWriterStyle.BorderStyle, "none");
            tbl.Rows[0].Cells[0].Style.Add(HtmlTextWriterStyle.BorderWidth, "0px");
            tbl.Rows[0].Cells[0].Style.Add(HtmlTextWriterStyle.Height, "30px");
            txtDate.ID = "txt";
            if (txtDate.Width.IsEmpty)
            {
                txtDate.Width = Unit.Pixel(70);
            }
            txtDate.Attributes.Add("OnKeyPress", "return checkAllowedKey(event);");
            tbl.Rows[0].Cells[0].Controls.Add(txtDate);
            tbl.Rows[0].Cells[0].Controls.Add(new LiteralControl("&nbsp"));

            tbl.Rows[0].Cells[1].Style.Add(HtmlTextWriterStyle.Height, "30px");
            img.ID = "img";

            img.EnableViewState = false;
            tbl.Rows[0].Cells[1].Controls.Add(img);

            this.Controls.Add(tbl);
        }

        /// <summary>
        /// Raise the DateChanged event.
        /// </summary>
        /// <param name="eventArgument"></param>
        public void RaisePostBackEvent(string eventArgument)
        {
            if (DateChanged != null)
            {
                DateChanged(this, new DateChangedEventArgs(CalendarDate));
            }
        }
    }
}

