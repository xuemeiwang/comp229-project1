using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// required for EF DB access
using comp229_project1.Models;
using System.Web.ModelBinding;
using System.Diagnostics;

namespace comp229_project1
{
    public partial class AddResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if((!IsPostBack) && (Request.QueryString.Count > 0))
            {
                this.GetResult();
            }
        }

        /// <summary>
        /// This method populates the form with existing data from db
        /// </summary>
        protected void GetResult()
        {
            // find out game week and ID from URL
            int gameWeek = Convert.ToInt32(Request.QueryString["WeekNumber"]);
            int gameID = Convert.ToInt32(Request.QueryString["GameID"]);
            Debug.WriteLine("week number: " + gameWeek + " game id: " + gameID);

            // connect to the EF DB
            using(GameContext db = new GameContext())
            {
                // populate a game result object instance
                Result updatedResult = (from results in db.Results
                                        where results.WeekNumber == gameWeek
                                        where results.GameID == gameID
                                        select results).FirstOrDefault();

                // map the result properties to the form control
                if(updatedResult != null)
                {
                    GameWeekTextBox.Text = updatedResult.WeekNumber.ToString();
                    GameIDTextBox.Text = updatedResult.GameID.ToString();
                    Team1ScoreTextBox.Text = updatedResult.TeamScore1.ToString();
                    Team2ScoreTextBox.Text = updatedResult.TeamScore2.ToString();
                    SpectatorTextBox.Text = updatedResult.Spectator.ToString();
                }
            }
        }

        /// <summary>
        /// This method cancels input and redirects back to Default page
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            // redirect back to the Default page
            Response.Redirect("/Default.aspx");
        }

        /// <summary>
        /// This method saves the game results into the DB
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // use EF to connect to the DB
            using(GameContext db = new GameContext())
            {
                // find if the game result already exists
                bool newResult = false;
                int gameWeek = Convert.ToInt32(GameWeekTextBox.Text);
                int gameID = Convert.ToInt32(GameIDTextBox.Text);
                Result tempResult = (from result in db.Results
                                        where result.WeekNumber == gameWeek
                                        where result.GameID == gameID
                                        select result).FirstOrDefault();

                // use the result model to create a new result object and save a new record
                if(tempResult == null)
                {
                    newResult = true;
                    tempResult = new Result();
                    tempResult.WeekNumber = gameWeek;
                    tempResult.GameID = gameID;

                    // find out team IDs
                    switch (tempResult.GameID)
                    {
                        case 1:
                            tempResult.TeamID1 = 100;
                            tempResult.TeamID2 = 101;
                            break;
                        case 2:
                            tempResult.TeamID1 = 102;
                            tempResult.TeamID2 = 103;
                            break;
                        case 3:
                            tempResult.TeamID1 = 104;
                            tempResult.TeamID2 = 105;
                            break;
                        case 4:
                            tempResult.TeamID1 = 106;
                            tempResult.TeamID2 = 107;
                            break;
                    }
                }

                // add form data to the new result record
                tempResult.Spectator = Convert.ToInt32(SpectatorTextBox.Text);
                tempResult.TeamScore1 = Convert.ToInt32(Team1ScoreTextBox.Text);
                tempResult.TeamScore2 = Convert.ToInt32(Team2ScoreTextBox.Text);

                if (newResult)
                {
                    db.Results.Add(tempResult);
                }

                // save the new result - also updates and inserts
                db.SaveChanges();

                // redirect back to Default page
                Response.Redirect("/Default.aspx");
            }
        }
    }
}