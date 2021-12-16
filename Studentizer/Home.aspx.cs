using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Studentizer
{
    public partial class home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        SqlDataAdapter sda = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=(localdb)\\ProjectsV13;Initial Catalog=StudentDB;Integrated Security=True;";
            con.Open();

            if (!Page.IsPostBack)
            {
                DataShow();
            }
        }

        protected void btnAdder(object sender, EventArgs e) 
        {
            dt = new DataTable();
            cmd.CommandText = "INSERT into [StudentDB].[dbo].[tblSudentDB](Id, Name, Age, Place, Gmail, Salary)VALUES('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + TextBox6.Text.ToString() + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }

        public void DataShow()
        {
            ds = new DataSet();
            cmd.CommandText = "Select * From tblSudentDB";
            cmd.Connection = con;
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void btnUpper(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update [StudentDB].[dbo].[tblSudentDB] set Name = '" + TextBox2.Text.ToString() + "', Age = '" + TextBox3.Text.ToString() + "', Place = '" + TextBox4.Text.ToString() + "', Gmail = '" + TextBox5.Text.ToString() + "', Salary = '" + TextBox6.Text.ToString() + "' where Id ='" + TextBox1.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }

        protected void btnDeleter(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Delete from [StudentDB].[dbo].[tblSudentDB] where Id = '" + TextBox1.Text.ToString() +"'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }

    }
}