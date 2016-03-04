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
       Brand.DeleteAll();
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
    
    [Fact]
    public void BrandKnowsItsName()
    {
      Brand test = new Brand("Name");
      Assert.Equal("Name", test.GetName());
    }
    [Fact]
    public void BrandGetsAllFromDatabaseAndIsEmpty()
    {
      Assert.Equal(0,Brand.GetAll().Count);
    }
    [Fact]
    public void BrandSavesToDatabase()
    {
      new Brand("test").Save();
      Assert.Equal(1, Brand.GetAll().Count);
    }
    [Fact]
    public void BrandDeletesAllFromDatabase()
    {
      new Brand("test").Save();
      Brand.DeleteAll();
      Assert.Equal(0,Brand.GetAll().Count);
    }
    [Fact]
    public void BrandDeletesSingleFromDatabase()
    {
      Brand test = new Brand("test");
      test.Save();
      Assert.Equal(1,Brand.GetAll().Count);
      test.Delete();
      Assert.Equal(0,Brand.GetAll().Count);
    }
    [Fact]
    public void BrandUpdatesDatabase()
    {
      Brand test = new Brand("test");
      test.Save();
      Assert.Equal("test", test.GetName());
      test.SetName("test2");
      test.Save();
      Assert.Equal("test2", test.GetName());
    }
    [Fact]
    public void BrandFindsSingleRow()
    {
      Brand test =new Brand("test");
      test.Save();
      Assert.Equal(test, Brand.Find(test.GetId()));
    }
    [Fact]
    public void StoreGetsBrands() 
    {
      Store test = new Store("test");
      Assert.Equal(0, test.GetBrands().Count);
    }
    [Fact]
    public void StoreSavesBrand()
    {
      Store testStore = new Store("test");
      testStore.Save();
      Brand testBrand = new Brand("test");
      testBrand.Save();
      testStore.AddBrand(testBrand);
      Assert.Equal(testBrand, testStore.GetBrands()[0]);
    }
    [Fact]
    public void BrandGetsStores()
    {
      Brand test = new Brand("test");
      test.Save();
      Store store = new Store("test");
      store.AddBrand(test);
      Assert.Equal(1, test.GetStores().Count);
    }
  }
}
