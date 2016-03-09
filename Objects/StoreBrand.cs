using System.Collections.Generic;
using System.Data.SqlClient;
using JensenNS.Objects;

namespace BrandingNS.Objects
{
  public class StoreBrand : DBHandler
  {
    public static string Table = "brand_store";
    public static string StoreIdColumn = "store_id";
    public static string BrandIdColumn = "brand_id";
    public static List<string> Columns = new List<string> { StoreIdColumn, BrandIdColumn };
    
    public static List<SqlParameter> MakeParameters(int store, int brand)
    {
      return new List<SqlParameter> {
        new SqlParameter("@"+StoreIdColumn, store),
        new SqlParameter("@"+BrandIdColumn, brand)
      };
    }
    
    public static void DeleteRelationship(int store, int brand)
    {
      string query = "DELETE FROM " + Table + " WHERE " + StoreIdColumn + " = @"+StoreIdColumn+" AND " + BrandIdColumn + " = @"+BrandIdColumn;
      
      DBHandler.DatabaseOperation(query, MakeParameters(store, brand) );
    }
  }
}