using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;
using JensenNS.Objects;
using System.Linq;

namespace BrandingNS.Objects
{
  public class Brand : DBHandler
  {
    private int _id;
    private string _name;
    public static string Table = "brands";
    public static string NameColumn = "name";
    
    public Brand(string name, int id = 0)
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
    public List<Store> GetStores()
    {
      string query = "JOIN "+ StoreBrand.Table + " ON (" +StoreBrand.StoreIdColumn + " = " +Store.Table + ".id) WHERE "+StoreBrand.Table+"."+StoreBrand.BrandIdColumn+" = @id";
      SqlParameter parameter = new SqlParameter("@id", GetId());
      return base.GetList(Store.Table, query, Store.MakeObject, parameter).Cast<Store>().ToList();
    }
    public static Brand Find(int id)
    {
      return (Brand) DBHandler.GetObjectFromDB(Table, "WHERE id = @id", MakeObject, new SqlParameter("@id", id));
    }
    public static List<Brand> GetAll()
    {
      return DBHandler.GetAll(Table, MakeObject).Cast<Brand>().ToList();
    }
    public static void DeleteAll()
    {
      DBHandler.DeleteAll(Table);
    }
    
    public override bool Equals(System.Object other)
    {
      if(!(other is Brand))
      {
        return false;
      } else {
        Brand test = (Brand) other;
        bool idMatch = test.GetId() == this.GetId();
        bool nameMatch = test.GetName() == this.GetName();
        return( idMatch && nameMatch );
      }
    }
    public static Object MakeObject(SqlDataReader rdr)
    {
      return new Brand(rdr.GetString(1), rdr.GetInt32(0));
    }
    
  } // end class
} // end namespace
