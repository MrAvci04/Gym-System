using MajdGym;
using System;
using System.Activities;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;

/// <summary>
/// Summary description for newaccount
/// </summary>
public class newaccount
{
    public newaccount()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    static public void create_account(string Name,string mail, string pass, string ques, string ans)
    {
        string query = "INSERT INTO users (UserName, Pass, Email, Ques, Answer, type) VALUES ('" +Name + "','"+pass+ "','" +mail+ "','" +ques+ "','"+ans+"','user')";
        Dbase.ChangeTable(query, "db1.accdb");
    }
    static public DataTable SelectFromUser(string query)
    {
        return Dbase.SelectFromTable(query,"db1.accdb");
    }
    static public void changeuser(string query)
    {
        Dbase.ChangeTable(query, "db1.accdb");
    }
    
}