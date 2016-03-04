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
        return View["header.cshtml"];
      };
    }
  }
}
