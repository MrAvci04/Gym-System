using MajdGym;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cont1
/// </summary>
public class Cont1
{
    public Cont1()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    static public void send_msg(string from,string sub,string msg)
    {
        string query = "INSERT INTO [messages]"+"(from1, sub1, content1) VALUES ('" + from + "','" + sub + "','" + msg + "')";
        Dbase.ChangeTable(query,"db1.accdb");
    }
}