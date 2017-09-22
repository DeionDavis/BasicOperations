using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Class11;
public partial class Student_Display : System.Web.UI.Page
{
    Class1 objclass = new Class1();
    public void LoadallStudent()
    {
        objclass.getconnection();
        DataTable dt = new DataTable();
        string sql = "SELECT TOP 1000 StudentID,Name,Age,CourseID ,Rollno FROM StudentReg";
        dt=objclass.Getdatatable(sql);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            LoadallStudent();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            Session["StudentID"] = e.CommandArgument.ToString();
            if (Session["StudentID"] != null)
            {
                Response.Redirect("Student_Manage.aspx");
            }
        }
        if (e.CommandName == "Delete")
        {
            Session["StudentID"] = e.CommandArgument.ToString();
            int StudentID = Convert.ToInt32(Session["StudentID"].ToString());
            string sql = "delete from StudentReg where StudentID="+ StudentID+"";
            objclass.executenonquery(sql);
            Response.Redirect("Student_Display.aspx");
        }
    }
    
}