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
        return View["index.cshtml"];
      };
      Get["/store/{sid}/"] = x => {
        return View["viewStore.cshtml", Store.Find(int.Parse(x.sid))];
      };
      Get["/brand/{bid}/"] = x => {
        return View["viewBrand.cshtml", Brand.Find(int.Parse(x.bid))];
      };
      Get["/store/{sid}/brands/"] = x => {
        Dictionary<string, object> model = new Dictionary<string, object>{};
        model.Add("store", Store.Find(int.Parse(x.sid)));
        model.Add("brands", Brand.GetAll());
        return View["viewStoreListBrands.cshtml", model];
      };
      Get["/brand/{bid}/stores/"] = x => {
        Dictionary<string, object> model = new Dictionary<string, object>{};
        model.Add("brand", Brand.Find(int.Parse(x.bid)));
        model.Add("stores", Store.GetAll());
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
        string name = Request.Form["name"];
        new Store(name).Save();
        return View["forward.cshtml", "/"];
      };
      Post["/brand/add/"] = _ => {
        string name = Request.Form["name"];
        new Brand(name).Save();
        return View["forward.cshtml", "/"];
      };
    }
  }
}
