using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;
using JensenNS.Objects;
using System.Linq;

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
    
    public void Save()
    {
      SetId(base.Save(Table,
         new List<string> { NameColumn }, 
         new List<SqlParameter> { 
           new SqlParameter("@"+NameColumn, GetName())
           }, 
         GetId() ));
    }
    public void Delete()
    {
      if( GetId() > 0 ) // make sure saved to database first
      {
        DBHandler.Delete(Table, GetId());
      }
    }
    
    public static Store Find(int id)
    {
      return (Store) DBHandler.GetObjectFromDB(Table, "WHERE id = @id", MakeObject, new SqlParameter("@id", id));
    }
    public static List<Store> GetAll()
    {
      return DBHandler.GetAll(Table, MakeObject).Cast<Store>().ToList();
    }
    public static void DeleteAll()
    {
      DBHandler.DeleteAll(Table);
    }
    public static Object MakeObject(SqlDataReader rdr)
    {
      return new Store(rdr.GetString(1), rdr.GetInt32(0));
    }
    
  } // end class
} // end namespace
