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
                // query the result Table using EF and LINQ
                var info = (from allInfo in db.Results
                               where allInfo.GameID==1
                               where allInfo.WeekNumber==1
                               select allInfo);

                // bind the result to the GameInfo GridView
                GameInfoGridView1.DataSource = info.ToList();
                GameInfoGridView1.DataBind();

                // query the result Table using EF and LINQ
                var results = (from allResults in db.Results
                               where allResults.GameID == 1
                               where allResults.WeekNumber == 1
                               where allResults.TeamID1 == 100
                               select allResults);

                // bind the result to the GameResult GridView
                GameGridView1.DataSource = results.ToList();
                GameGridView1.DataBind();
            }

        }
    }
}