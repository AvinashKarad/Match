using System;
using System.Collections.Generic;
using System.Data.EntityModel;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CricketMatchProject.Models;
using Newtonsoft.Json;

namespace CricketMatchProject.Controllers
{
    public class MatchController : Controller
    {

        private CricketEntities db = new CricketEntities();

        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Create()
        {
            MatchViewModel match1 = new MatchViewModel();
            List<Team> teamlist = db.Teams.ToList();
            match1.teams = teamlist;

            List<Player> playerlist = db.Players.ToList();
            match1.players = playerlist;

            List<PlayerType> playerTypelist = db.PlayerTypes.ToList();
            match1.playerType = playerTypelist;

            return View(match1);
        }


        [HttpPost]
        public ActionResult Create(MatchViewModel match)
        {
            if (ModelState.IsValid)
            {
                db.Matches.Add(match._match);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View();
        }


        public ActionResult Edit(int id)
        {
            return View();
        }


        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }


        public ActionResult Details(int id)
        {
            return View();
        }


        public ActionResult Delete(int id)
        {
            return View();
        }

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
