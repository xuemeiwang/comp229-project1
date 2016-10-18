using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// required for EF DB access
using comp229_project1.Models;
using System.Web.ModelBinding;

namespace comp229_project1
{
    public partial class AddResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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