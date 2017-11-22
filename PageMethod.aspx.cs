using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class PageMethod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetMovie(string prefixText)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Movies.accdb;Persist Security Info=True");
        OleDbCommand cmd = new OleDbCommand("SELECT Name FROM Movies Where Name LIKE'" + prefixText + "%'", con);
        OleDbDataReader reader;
        List<string> result = new List<string>();
        using (con)
        {
            con.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                result.Add(reader["Name"].ToString());
            }
            return result;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Movies.accdb;Persist Security Info=True");
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM Movies Where Name='" + TextBox1.Text + "'", con);
        DataTable dtb = new DataTable();
        dtb.Columns.Add("Name");
        dtb.Columns.Add("Producer");
        OleDbDataReader reader;
        using (con)
        {
            con.Open();
            reader = cmd.ExecuteReader();
            DataRow row;
            while (reader.Read())
            {
                row = dtb.NewRow();
                row["Name"] = (string)reader["Name"];
                row["Producer"] = (string)reader["Producer"];
                dtb.Rows.Add(row);
            }
            GridView1.DataSource = dtb;
            GridView1.DataBind();
        }
    }
}