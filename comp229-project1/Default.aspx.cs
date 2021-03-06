﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// using statements that are required to connect to EF DB
using comp229_project1.Models;
using System.Web.ModelBinding;
using System.Diagnostics;
using System.Linq.Dynamic;

namespace comp229_project1
{
   
    public partial class Default : System.Web.UI.Page
    {
        static int currentWeek = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            // if loading the page for the first time
            // populate the results grid
            if (!IsPostBack)
            {
                this.GetResults();
            }
        }

        /// <summary>
        /// This method gets the game results from the DB
        /// </summary>
        private void GetResults()
        {
            // update page title with week information
            Debug.WriteLine(currentWeek);
            Page.Title = "Game - Week " + currentWeek;

            // connect to EF DB
            using (GameContext db = new GameContext())
            {
                // Game 1
                // query the Results Table using EF and LINQ
                var game1Info = (from allInfo in db.Results
                                 where allInfo.GameID == 1
                                 where allInfo.WeekNumber == currentWeek
                                 select allInfo);

                // bind the result to the GameInfo GridView
                GameInfoGridView1.DataSource = game1Info.ToList();
                GameInfoGridView1.DataBind();


                // query the information form Team 1
                /* failed attemp
                var results = (from allResults in db.Results
                               join allTeams in db.Teams on allResults.TeamID1 equals allTeams.TeamID
                               where allResults.GameID == 1
                               where allResults.WeekNumber == 1
                               where allResults.TeamID1 == 100
                               select allResults);
                */
                // query the Teams Table using EF and LINQ
                var team11Info = (from allInfo in db.Teams
                                  where allInfo.GameID == 1
                                  where allInfo.TeamID == 100
                                  select allInfo);

                // bind the result to the TeamInfo GridView
                TeamInfo1GridView1.DataSource = team11Info.ToList();
                TeamInfo1GridView1.DataBind();

                // query the Results Table using EF and LINQ
                var team11Result = (from allResults in db.Results
                                    where allResults.GameID == 1
                                    where allResults.WeekNumber == currentWeek
                                    where allResults.TeamID1 == 100
                                    select allResults);

                // bind the result to the TeamResult GridView
                TeamResult1GridView1.DataSource = team11Result.ToList();
                TeamResult1GridView1.DataBind();


                // query the information form Team 2
                // query the Teams Table using EF and LINQ
                var team12Info = (from allInfo in db.Teams
                                  where allInfo.GameID == 1
                                  where allInfo.TeamID == 101
                                  select allInfo);

                // bind the result to the TeamInfo GridView
                TeamInfo2GridView1.DataSource = team12Info.ToList();
                TeamInfo2GridView1.DataBind();

                // query the Results Table using EF and LINQ
                var team12Result = (from allResults in db.Results
                                    where allResults.GameID == 1
                                    where allResults.WeekNumber == currentWeek
                                    where allResults.TeamID2 == 101
                                    select allResults);

                // bind the result to the TeamResult GridView
                TeamResult2GridView1.DataSource = team12Result.ToList();
                TeamResult2GridView1.DataBind();


                // Game 2
                // query the Results Table using EF and LINQ
                var game2Info = (from allInfo in db.Results
                                 where allInfo.GameID == 2
                                 where allInfo.WeekNumber == currentWeek
                                 select allInfo);

                // bind the result to the GameInfo GridView
                GameInfoGridView2.DataSource = game2Info.ToList();
                GameInfoGridView2.DataBind();


                // query the information form Team 1
                // query the Teams Table using EF and LINQ
                var team21Info = (from allInfo in db.Teams
                                  where allInfo.GameID == 2
                                  where allInfo.TeamID == 102
                                  select allInfo);

                // bind the result to the TeamInfo GridView
                TeamInfo1GridView2.DataSource = team21Info.ToList();
                TeamInfo1GridView2.DataBind();

                // query the Results Table using EF and LINQ
                var team21Result = (from allResults in db.Results
                                    where allResults.GameID == 2
                                    where allResults.WeekNumber == currentWeek
                                    where allResults.TeamID1 == 102
                                   select allResults);

                // bind the result to the TeamResult GridView
                TeamResult1GridView2.DataSource = team21Result.ToList();
                TeamResult1GridView2.DataBind();


                // query the information form Team 2
                // query the Teams Table using EF and LINQ
                var team22Info = (from allInfo in db.Teams
                                  where allInfo.GameID == 2
                                  where allInfo.TeamID == 103
                                  select allInfo);

                // bind the result to the TeamInfo GridView
                TeamInfo2GridView2.DataSource = team22Info.ToList();
                TeamInfo2GridView2.DataBind();

                // query the Results Table using EF and LINQ
                var team22Result = (from allResults in db.Results
                                    where allResults.GameID == 2
                                    where allResults.WeekNumber == currentWeek
                                    where allResults.TeamID2 == 103
                                    select allResults);

                // bind the result to the TeamResult GridView
                TeamResult2GridView2.DataSource = team22Result.ToList();
                TeamResult2GridView2.DataBind();


                // Game 3
                // query the Results Table using EF and LINQ
                var game3Info = (from allInfo in db.Results
                                 where allInfo.GameID == 3
                                 where allInfo.WeekNumber == currentWeek
                                 select allInfo);

                // bind the result to the GameInfo GridView
                GameInfoGridView3.DataSource = game3Info.ToList();
                GameInfoGridView3.DataBind();


                // query the information form Team 1
                // query the Teams Table using EF and LINQ
                var team31Info = (from allInfo in db.Teams
                                  where allInfo.GameID == 3
                                  where allInfo.TeamID == 104
                                  select allInfo);

                // bind the result to the TeamInfo GridView
                TeamInfo1GridView3.DataSource = team31Info.ToList();
                TeamInfo1GridView3.DataBind();

                // query the Results Table using EF and LINQ
                var team31Result = (from allResults in db.Results
                                    where allResults.GameID == 3
                                    where allResults.WeekNumber == currentWeek
                                    where allResults.TeamID1 == 104
                                    select allResults);

                // bind the result to the TeamResult GridView
                TeamResult1GridView3.DataSource = team31Result.ToList();
                TeamResult1GridView3.DataBind();


                // query the information form Team 2
                // query the Teams Table using EF and LINQ
                var team32Info = (from allInfo in db.Teams
                                  where allInfo.GameID == 3
                                  where allInfo.TeamID == 105
                                  select allInfo);

                // bind the result to the TeamInfo GridView
                TeamInfo2GridView3.DataSource = team32Info.ToList();
                TeamInfo2GridView3.DataBind();

                // query the Results Table using EF and LINQ
                var team32Result = (from allResults in db.Results
                                    where allResults.GameID == 3
                                    where allResults.WeekNumber == currentWeek
                                    where allResults.TeamID2 == 105
                                    select allResults);

                // bind the result to the TeamResult GridView
                TeamResult2GridView3.DataSource = team32Result.ToList();
                TeamResult2GridView3.DataBind();


                // Game 4
                // query the Results Table using EF and LINQ
                var game4Info = (from allInfo in db.Results
                                 where allInfo.GameID == 4
                                 where allInfo.WeekNumber == currentWeek
                                 select allInfo);

                // bind the result to the GameInfo GridView
                GameInfoGridView4.DataSource = game4Info.ToList();
                GameInfoGridView4.DataBind();


                // query the information form Team 1
                // query the Teams Table using EF and LINQ
                var team41Info = (from allInfo in db.Teams
                                  where allInfo.GameID == 4
                                  where allInfo.TeamID == 106
                                  select allInfo);

                // bind the result to the TeamInfo GridView
                TeamInfo1GridView4.DataSource = team41Info.ToList();
                TeamInfo1GridView4.DataBind();

                // query the Results Table using EF and LINQ
                var team41Result = (from allResults in db.Results
                                    where allResults.GameID == 4
                                    where allResults.WeekNumber == currentWeek
                                    where allResults.TeamID1 == 106
                                    select allResults);

                // bind the result to the TeamResult GridView
                TeamResult1GridView4.DataSource = team41Result.ToList();
                TeamResult1GridView4.DataBind();


                // query the information form Team 2
                // query the Teams Table using EF and LINQ
                var team42Info = (from allInfo in db.Teams
                                  where allInfo.GameID == 4
                                  where allInfo.TeamID == 107
                                  select allInfo);

                // bind the result to the TeamInfo GridView
                TeamInfo2GridView4.DataSource = team42Info.ToList();
                TeamInfo2GridView4.DataBind();

                // query the Results Table using EF and LINQ
                var team42Result = (from allResults in db.Results
                                    where allResults.GameID == 4
                                    where allResults.WeekNumber == currentWeek
                                    where allResults.TeamID2 == 107
                                    select allResults);

                // bind the result to the TeamResult GridView
                TeamResult2GridView4.DataSource = team42Result.ToList();
                TeamResult2GridView4.DataBind();
            }
        }

        protected void PreviousButton_Click(object sender, EventArgs e)
        {
            // from deleted button so abandoned
        }

        protected void NextButton_Click(object sender, EventArgs e)
        {
            // from deleted button so abandoned
        }

        /// <summary>
        /// This method sets the current week to previous one
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void PreviousWeekButton_Click(object sender, EventArgs e)
        {
            if (currentWeek == 1)
            {
                // if the current week is the 1st one, then set previous week to the last one
                currentWeek = 52;
            }
            else
            {
                currentWeek -= 1;
            }
            this.GetResults();
        }

        /// <summary>
        /// This method sets the current week to next one
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void NextWeekButton_Click(object sender, EventArgs e)
        {
            if (currentWeek == 52)
            {
                // if the current week is the last one, then set next week back to the 1st one
                currentWeek = 1;
            }
            else
            {
                currentWeek += 1;
            }
            this.GetResults();
        }

        /// <summary>
        /// This method deletes a record of game 1 from db
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void TeamResult1GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // check if a user is logged in
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                // redirect to Login page
                Response.Redirect("/Login.aspx");
            }

            // store which row was clicked
            int selectedRow = e.RowIndex;

            // get the selected week and game ID using the Grid's DataKey collection
            int gameWeek = Convert.ToInt32(GameInfoGridView1.DataKeys[selectedRow].Values["WeekNumber"]);
            int gameID = Convert.ToInt32(GameInfoGridView1.DataKeys[selectedRow].Values["GameID"]);
            Debug.WriteLine("week: " + gameWeek);
            Debug.WriteLine("id: " + gameID);
            
            // using EF and LINQ to find the selected game result in DB and remove it
            using(GameContext db = new GameContext())
            {
                // create object of the result class and store the query inside of it
                Result deletedResult = (from results in db.Results
                                        where results.WeekNumber == gameWeek
                                        where results.GameID == gameID
                                        select results).FirstOrDefault();

                // remove the selected result from DB
                db.Results.Remove(deletedResult);

                // save the change back to DB
                db.SaveChanges();

                // refresh the page
                this.GetResults();
            }            
        }

        /// <summary>
        /// This method deletes a record of game 2 from db
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GameInfoGridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // check if a user is logged in
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                // redirect to Login page
                Response.Redirect("/Login.aspx");
            }

            // using EF and LINQ to find the selected game result in DB and remove it
            using (GameContext db = new GameContext())
            {
                // create object of the result class and store the query inside of it
                Result deletedResult = (from results in db.Results
                                        where results.WeekNumber == currentWeek
                                        where results.GameID == 2
                                        select results).FirstOrDefault();

                // remove the selected result from DB
                db.Results.Remove(deletedResult);

                // save the change back to DB
                db.SaveChanges();

                // refresh the page
                this.GetResults();
            }
        }

        /// <summary>
        /// This method deletes a record of game 3 from db
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GameInfoGridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // check if a user is logged in
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                // redirect to Login page
                Response.Redirect("/Login.aspx");
            }

            // using EF and LINQ to find the selected game result in DB and remove it
            using (GameContext db = new GameContext())
            {
                // create object of the result class and store the query inside of it
                Result deletedResult = (from results in db.Results
                                        where results.WeekNumber == currentWeek
                                        where results.GameID == 3
                                        select results).FirstOrDefault();

                // remove the selected result from DB
                db.Results.Remove(deletedResult);

                // save the change back to DB
                db.SaveChanges();

                // refresh the page
                this.GetResults();
            }

        }

        /// <summary>
        /// This method deletes a record of game 4 from db
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GameInfoGridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // check if a user is logged in
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                // redirect to Login page
                Response.Redirect("/Login.aspx");
            }

            // using EF and LINQ to find the selected game result in DB and remove it
            using (GameContext db = new GameContext())
            {
                // create object of the result class and store the query inside of it
                Result deletedResult = (from results in db.Results
                                        where results.WeekNumber == currentWeek
                                        where results.GameID == 4
                                        select results).FirstOrDefault();

                // remove the selected result from DB
                db.Results.Remove(deletedResult);

                // save the change back to DB
                db.SaveChanges();

                // refresh the page
                this.GetResults();
            }

        }
    }
}