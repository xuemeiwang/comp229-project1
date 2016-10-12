using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// using statements that are required to connect to EF DB
using comp229_project1.Models;
using System.Web.ModelBinding;

namespace comp229_project1
{
    public partial class Default : System.Web.UI.Page
    {
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
        /// This method gets the result data from the DB
        /// </summary>
        private void GetResults()
        {
            // connect to EF DB
            using (GameContext db = new GameContext())
            {
                // Game 1
                // query the Results Table using EF and LINQ
                var game1Info = (from allInfo in db.Results
                                 where allInfo.GameID == 1
                                 where allInfo.WeekNumber == 1
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
                                    where allResults.WeekNumber == 1
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
                                    where allResults.WeekNumber == 1
                                    where allResults.TeamID2 == 101
                                    select allResults);

                // bind the result to the TeamResult GridView
                TeamResult2GridView1.DataSource = team12Result.ToList();
                TeamResult2GridView1.DataBind();


                // Game 2
                // query the Results Table using EF and LINQ
                var game2Info = (from allInfo in db.Results
                                 where allInfo.GameID == 2
                                 where allInfo.WeekNumber == 1
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
                                    where allResults.WeekNumber == 1
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
                                    where allResults.WeekNumber == 1
                                    where allResults.TeamID2 == 103
                                    select allResults);

                // bind the result to the TeamResult GridView
                TeamResult2GridView2.DataSource = team22Result.ToList();
                TeamResult2GridView2.DataBind();
            }

        }
    }
}