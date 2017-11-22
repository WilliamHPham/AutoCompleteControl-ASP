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
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public string[] GetMovie(string prefixText, int count)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Movies.accdb;Persist Security Info=True");
        OleDbCommand cmd = new OleDbCommand("SELECT ID, Name FROM Movies WHERE Name LIKE @Name", con);
        cmd.Parameters.AddWithValue("@Name", prefixText + "%");
        OleDbDataReader reader;
        List<string> resultList = new List<string>();
        string resultItem = string.Empty;
        using (con)
        {
            con.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                resultItem = AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(reader[0].ToString(), reader[1].ToString());
                resultList.Add(resultItem);
            }
            return resultList.ToArray();
        }
    }

    public OleDbDataReader getID(int mID)
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Movies.accdb;Persist Security Info=True");
        OleDbCommand cmd = new OleDbCommand("SELECT ID, Name FROM Movies WHERE ID LIKE @ID", conn);
        cmd.Parameters.AddWithValue("@ID", mID);
        conn.Open();
        return cmd.ExecuteReader(CommandBehavior.CloseConnection);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = getID(Convert.ToInt32(hdMovieID.Value));
        GridView1.DataBind();
    }
}