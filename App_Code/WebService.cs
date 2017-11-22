using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.OleDb;
using System.Data;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    [WebMethod]
    public List<string> SearchMovie (string prefixText)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Movies.accdb;Persist Security Info=True");
        OleDbCommand cmd = new OleDbCommand("SELECT Name FROM Movies Where Name LIKE'" + prefixText + "%'", con);
        OleDbDataReader reader;
        List<string> result = new List<string>(); ;
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

}
