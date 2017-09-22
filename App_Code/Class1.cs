using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Class1
/// </summary>
namespace Class11
{

public class Class1
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["studentConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter ada = new SqlDataAdapter();
    DataTable dt = new DataTable();

    public SqlConnection getconnection()
{
        if(con.State==ConnectionState.Open)
        {
            con.Close();
        }

        con.Open();
        return con;
}

    public string executenonquery(string cmdtxt)
    {
        cmd.Connection = getconnection();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = cmdtxt;
        cmd.ExecuteNonQuery();
        return cmdtxt;
    }

    public string executescalar(string cmdtxt)
    {
        cmd.Connection = getconnection();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = cmdtxt;
        string result = cmd.ExecuteScalar().ToString();
        return result;
    }
    public DataTable Getdatatable(string cmdtxt)
    {
        cmd.Connection = getconnection();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = cmdtxt;
        ada.SelectCommand = cmd;
        ada.Fill(dt);
        return dt;
    }
                                    //    string[] fromDate1 = txt_fromDate.Text.Split(new Char[] { '/' });
                                    //txt_fromDate.Text = fromDate1[0] + "/" + fromDate1[1] + "/" + fromDate1[2];





}
}