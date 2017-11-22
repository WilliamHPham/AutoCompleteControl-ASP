using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

public partial class Css_TextAndValuesPairs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetMovie(string prefixText)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Movies.accdb;Persist Security Info=True");
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM Movies Where Name LIKE'" + prefixText + "%'", con);
        OleDbDataReader reader;
        List<string> result = new List<string>();
        using (con)
        {
            con.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string item = AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(reader["Name"].ToString(), Convert.ToUInt32(reader["ID"]).ToString());
                result.Add(item);
            }
            return result;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblSelectedName.Text = TextBox1.Text;
        lblSelectedNameId.Text = ace1Value.Value;
    }
}