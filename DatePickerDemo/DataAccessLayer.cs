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
using System.Data;
using System.Web;

/// <summary>
/// This class simulates a database.
/// </summary>
[System.ComponentModel.DataObject]
public class DataAccessLayer
{
    /// <summary>
    /// Gets the DataTable which is stored in the current session.
    /// </summary>
    private DataTable Persons
    {
        get
        {
            if (HttpContext.Current.Session["table"] == null)
            {
                HttpContext.Current.Session["table"] = CreateTable();
            }
            return (DataTable)HttpContext.Current.Session["table"];
        }
    }

    /// <summary>
    /// Returns a list of persons and their birthdates.
    /// </summary>
    /// <returns>DataTable</returns>
    [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Select, true)]
    public DataTable GetPersons()
    {
        return Persons;
    }

    /// <summary>
    /// Updates a person.
    /// </summary>
    /// <param name="id">person id</param>
    /// <param name="firstName">first name</param>
    /// <param name="lastName">last name</param>
    /// <param name="birthdate">birthdate</param>
    [System.ComponentModel.DataObjectMethodAttribute(System.ComponentModel.DataObjectMethodType.Update, true)]
    public void UpdatePerson(int id, string firstName, string lastName, DateTime birthdate)
    {
        foreach (DataRow row in Persons.Rows)
        {
            if ((int)row["Id"] == id)
            {
                row["FirstName"] = firstName;
                row["LastName"] = lastName;
                row["Birthdate"] = birthdate;
                row.AcceptChanges();
                break;
            }
        }
    }

    /// <summary>
    /// Create a DataTable with some persons in it.
    /// </summary>
    /// <returns>DataTable</returns>
    private DataTable CreateTable()
    {
        DataTable dt = new DataTable("Persons");
        dt.Columns.Add("Id", typeof(int));
        dt.Columns.Add("FirstName", typeof(string));
        dt.Columns.Add("LastName", typeof(string));
        dt.Columns.Add("Birthdate", typeof(DateTime));

        DataRow dr = dt.NewRow();
        dr[0] = 1;
        dr[1] = "Albert";
        dr[2] = "Albright";
        dr[3] = new DateTime(1960, 5, 12);
        dt.Rows.Add(dr);

        dr = dt.NewRow();
        dr[0] = 2;
        dr[1] = "Berta";
        dr[2] = "Bones";
        dr[3] = new DateTime(1955, 2, 20);
        dt.Rows.Add(dr);

        dr = dt.NewRow();
        dr[0] = 3;
        dr[1] = "Charles";
        dr[2] = "Chambers";
        dr[3] = new DateTime(1975, 10, 8);
        dt.Rows.Add(dr);

        dr = dt.NewRow();
        dr[0] = 4;
        dr[1] = "Diana";
        dr[2] = "Denver";
        dr[3] = new DateTime(1968, 1, 11);
        dt.Rows.Add(dr);

        return dt;
    }
}
