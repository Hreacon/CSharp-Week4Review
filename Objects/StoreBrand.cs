using System.Collections.Generic;
using System.Data.SqlClient;

namespace BrandingNS.Objects
{
  public class StoreBrand
  {
    public static string Table = "store_brand";
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
  }
}