using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QLXS.Models;

namespace QLXS.Controllers
{
    public class DaiLiesController : Controller
    {
        private QLVESOEntities db = new QLVESOEntities();

        // GET: DaiLies
        public ActionResult Index()
        {
            return View(db.DaiLies.Where(s=>s.Flag==true).ToList());
        }

        // GET: DaiLies/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DaiLy daiLy = db.DaiLies.Find(id);
            if (daiLy == null)
            {
                return HttpNotFound();
            }
            return View(daiLy);
        }

        // GET: DaiLies/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: DaiLies/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaDaiLy,TenDaiLy,DiaChi,SDT,Flag")] DaiLy daiLy)
        {
            if (ModelState.IsValid)
            {
                var result = db.DaiLies.Count()+1;
                string x = "DL";
                if(result<10)
                {
                    x +="0"+ result;
                }
                if(result>10)
                {
                    x += result;
                }
                daiLy.MaDaiLy = x;
                daiLy.Flag = true;
                db.DaiLies.Add(daiLy);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(daiLy);
        }

        // GET: DaiLies/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DaiLy daiLy = db.DaiLies.Find(id);
            if (daiLy == null)
            {
                return HttpNotFound();
            }
            return View(daiLy);
        }

        // POST: DaiLies/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaDaiLy,TenDaiLy,DiaChi,SDT,Flag")] DaiLy daiLy)
        {
            if (ModelState.IsValid)
            {
                daiLy.Flag = true;
                db.Entry(daiLy).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(daiLy);
        }

        // GET: DaiLies/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DaiLy daiLy = db.DaiLies.Find(id);
            if (daiLy == null)
            {
                return HttpNotFound();
            }
            return View(daiLy);
        }

        // POST: DaiLies/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            DaiLy daiLy = db.DaiLies.Find(id);
            daiLy.Flag = false;
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
