using Nancy;
using BrandingNS.Objects;
using System.Collections.Generic;
namespace BrandingNS
{
  public class HomeModule : NancyModule
  {
    public HomeModule()
    {
      Get["/"] = _ => {
        Dictionary<string, object> model = new Dictionary<string, object>{};
        model.Add("stores", Store.GetAll());
        model.Add("brands", Brand.GetAll());
        return View["index.cshtml", model];
      };
      Get["/store/{sid}/"] = x => {
        return View["viewStore.cshtml", Store.Find(int.Parse(x.sid))];
      };
      Get["/brand/{bid}/"] = x => {
        return View["viewBrand.cshtml", Brand.Find(int.Parse(x.bid))];
      };
      Get["/store/{sid}/edit"] = x => {
        return View["editStore.cshtml", Store.Find(int.Parse(x.sid))];
      };
      Get["/brand/{bid}/edit"] = x => {
        return View["editBrand.cshtml", Brand.Find(int.Parse(x.bid))];
      };
      Get["/store/{sid}/brands/"] = x => {
        Dictionary<string, object> model = new Dictionary<string, object>{};
        Store store = Store.Find(int.Parse(x.sid));
        model.Add("store", store);
        model.Add("brands", store.GetBrandsNotInStore());
        return View["viewStoreListBrands.cshtml", model];
      };
      Get["/brand/{bid}/stores/"] = x => {
        Dictionary<string, object> model = new Dictionary<string, object>{};
        Brand brand = Brand.Find(int.Parse(x.bid));
        model.Add("brand", brand);
        model.Add("stores", brand.GetStoresNotInBrand());
        return View["viewBrandListStores.cshtml", model];
      };
      Get["/store/{sid}/addBrand/{bid}/"] = x => {
        Store store = Store.Find(int.Parse(x.sid));
        store.AddBrand(int.Parse(x.bid));
        return View["forward.cshtml", "/store/"+x.sid];
      };
      Get["/brand/{bid}/addStore/{sid}/"] = x => {
        Store store = Store.Find(int.Parse(x.sid));
        store.AddBrand(int.Parse(x.bid));
        return View["forward.cshtml", "/brand/"+x.bid];
      };
      Get["/store/{sid}/brand/{bid}/deleteRelationShip"] = x => {
        StoreBrand.DeleteRelationship(int.Parse(x.sid), int.Parse(x.bid));
        return View["forward.cshtml", "/store/"+x.sid];
      };
      Get["/brand/{bid}/store/{sid}/deleteRelationShip"] = x => {
        StoreBrand.DeleteRelationship(int.Parse(x.sid), int.Parse(x.bid));
        return View["forward.cshtml", "/brand/"+x.bid];
      };
      Post["/store/add/"] = _ => {
        string name = Request.Form["storeName"];
        new Store(name).Save();
        return View["forward.cshtml", "/"];
      };
      Post["/brand/add/"] = _ => {
        string name = Request.Form["brandName"];
        new Brand(name).Save();
        return View["forward.cshtml", "/"];
      };
      Post["/store/save/"] = _ => {
        int id = int.Parse(Request.Form["id"]);
        string name = Request.Form["storeName"];
        Store store = Store.Find(id);
        store.SetName(name);
        store.Save();
        return View["forward.cshtml", "/store/"+store.GetId()];
      };
      Post["/brand/save/"] = _ => {
        int id = int.Parse(Request.Form["id"]);
        string name = Request.Form["brandName"];
        Brand brand = Brand.Find(id);
        brand.SetName(name);
        brand.Save();
        return View["forward.cshtml", "/brand/"+brand.GetId()];
      };
    }
  }
}
