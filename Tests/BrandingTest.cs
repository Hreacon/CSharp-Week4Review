using Xunit;
using BrandingNS.Objects;
using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;

namespace BrandingNS
{
  public class StoreTest : IDisposable
  {
     public StoreTest()
     {
       DBConfiguration.ConnectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=shoe_stores_test;Integrated Security=SSPI;";
     }
     public void Dispose()
     {
       Store.DeleteAll();
     }
  }
}
