using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
//using System.Configuration;
using Class11;
public partial class Student_Manage : System.Web.UI.Page
{

    Class1 objclass1 = new Class1();
    //SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["studentConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Loadcourse();
        }
    }
    public void Loadcourse()
    {
        DataTable dt = new DataTable();
        objclass1.getconnection();
        string sql = "Select Course from Course";
        dt=objclass1.Getdatatable(sql);
        DrpCourse.DataSource = dt;
        DrpCourse.DataTextField = "Course";
        DrpCourse.DataValueField = "Course";
        DrpCourse.Items.Insert(0, "Select Course");
        DrpCourse.DataBind();
    }

    

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        objclass1.getconnection();
        string sql = "insert into StudentReg(Name) Values('"+txtName.Text+"')";
        sql = sql + "SELECT SCOPE_IDENTITY();";
        //string result = objclass1.executenonquery(sql);
        int result =Convert.ToInt32(objclass1.executescalar(sql));
        if (result > 0)
        {
            Response.Redirect("Student_Display.aspx");
        }
        else
        {
            Response.Write("Failed");
        }

    }
}