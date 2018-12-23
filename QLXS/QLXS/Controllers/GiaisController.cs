using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QLXS.Models;
using PagedList;

namespace QLXS.Controllers
{
    public class GiaisController : Controller
    {
        private QLVeSoEntities db = new QLVeSoEntities();

        // GET: Giais
        public ActionResult Index(string searchString, int? page)
        {
            var model = from d in db.Giais where d.TinhTrang == true select d;
            if (!String.IsNullOrEmpty(searchString))
            {
                page = 1;
                try
                {
                    Decimal giai = Convert.ToDecimal(searchString);
                    model = model.Where(x => x.GiaiThuong==giai).Where(x => x.TinhTrang == true);
                }
                catch
                {
                    model = model.Where(x => x.MaGiai.Contains(searchString)).Where(x => x.TinhTrang == true);
                }
                
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(model.OrderBy(i => i.MaGiai).ToPagedList(pageNumber, pageSize));
        }

        // GET: Giais/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Giai giai = db.Giais.Find(id);
            if (giai == null)
            {
                return HttpNotFound();
            }
            return View(giai);
        }

        // GET: Giais/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Giais/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaGiai,GiaiThuong,TinhTrang")] Giai giai)
        {
            if (ModelState.IsValid)
            {
                var result = db.DaiLies.Count() + 1;
                string x = "G";
                if (result < 10)
                {
                    x += "0" + result;
                }
                if (result > 10)
                {
                    x += result;
                }
                giai.MaGiai = x;
                giai.TinhTrang = true;
                db.Giais.Add(giai);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(giai);
        }

        // GET: Giais/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Giai giai = db.Giais.Find(id);
            if (giai == null)
            {
                return HttpNotFound();
            }
            return View(giai);
        }

        // POST: Giais/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaGiai,GiaiThuong,TinhTrang")] Giai giai)
        {
            if (ModelState.IsValid)
            {
                giai.TinhTrang = true;
                db.Entry(giai).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(giai);
        }

        // GET: Giais/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Giai giai = db.Giais.Find(id);
            if (giai == null)
            {
                return HttpNotFound();
            }
            return View(giai);
        }

        // POST: Giais/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Giai giai = db.Giais.Find(id);
            giai.TinhTrang = false;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        


        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
