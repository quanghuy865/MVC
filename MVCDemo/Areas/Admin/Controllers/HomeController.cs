using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.DAO;
using Model.DbConection;
using System.Web.UI;
namespace MVCDemo.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Admin/Home/

        public ActionResult Index()
        {
            ViewBag.Users = new UserDAO().ListUser();
            return View();
        }
        public JsonResult ListUser(){
            var data = new UserDAO().ListUser();
            return Json(data);
        }
    }
}
