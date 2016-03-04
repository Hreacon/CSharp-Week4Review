using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;
using JensenNS.Objects;

namespace BrandingNS.Objects
{
  public class Store : DBHandler
  {
    private int _id;
    private string _name;
    public static string Table = "stores";
    public static string NameColumn = "name";
    
    public Store(string name, int id = 0)
    {
      _id = id;
      _name = name;
    }
    
    public int GetId() { return _id; }
    public string GetName() { return _name; }
    public void SetName(string name) { _name = name; }
    public void SetId(int id) { _id = id; }
    
    
  } // end class
} // end namespace
