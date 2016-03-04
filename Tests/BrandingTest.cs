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
    
    [Fact]
    public void StoreKnowsItsName()
    {
      Store test = new Store("Name");
      Assert.Equal("Name", test.GetName());
    }
    [Fact]
    public void StoreGetsAllFromDatabaseAndIsEmpty()
    {
      Assert.Equal(0,Store.GetAll().Count);
    }
    [Fact]
    public void StoreSavesToDatabase()
    {
      new Store("test").Save();
      Assert.Equal(1, Store.GetAll().Count);
    }
    [Fact]
    public void StoreDeletesAllFromDatabase()
    {
      new Store("test").Save();
      Store.DeleteAll();
      Assert.Equal(0,Store.GetAll().Count);
    }
    [Fact]
    public void StoreDeletesSingleFromDatabase()
    {
      Store test = new Store("test");
      test.Save();
      Assert.Equal(1,Store.GetAll().Count);
      test.Delete();
      Assert.Equal(0,Store.GetAll().Count);
    }
    [Fact]
    public void StoreUpdatesDatabase()
    {
      Store test = new Store("test");
      test.Save();
      Assert.Equal("test", test.GetName());
      test.SetName("test2");
      test.Save();
      Assert.Equal("test2", test.GetName());
    }
    [Fact]
    public void StoreFindsSingleRow()
    {
      Store test =new Store("test");
      test.Save();
      Assert.Equal(test, Store.Find(test.GetId()));
    }
  }
}
