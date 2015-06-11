using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            //convert all scores for to decimals and display total points scored
            Decimal scores = Convert.ToDecimal(txtFor1.Text) + Convert.ToDecimal(txtFor2.Text) + Convert.ToDecimal(txtFor3.Text) + Convert.ToDecimal(txtFor4.Text);

            lblScored.Text = "You Scored" + " " + scores.ToString() + " " + "Points";

            //convert points allowed to decimals and display to screen
            Decimal allowed = Convert.ToDecimal(txtAgainst1.Text) + Convert.ToDecimal(txtAgainst2.Text) + Convert.ToDecimal(txtAgainst3.Text) + Convert.ToDecimal(txtAgainst4.Text);

            lblAllowed.Text = "You Allowed" + " " + allowed.ToString() + " " + "Points";

            //convert to decimal and calculate difference between points scored and allowed then display screen

            Decimal difference = scores - allowed;

            lblDifference.Text = "That's a differnce of " + " " + difference.ToString() + " " + "points";

            //convert spectators to decimal and display total to screen

            Decimal attended = Convert.ToDecimal(txtSpec1.Text) + Convert.ToDecimal(txtSpec2.Text) + Convert.ToDecimal(txtSpec3.Text) + Convert.ToDecimal(txtSpec4.Text);

            lblAttendance.Text = "A total of " + " " + attended.ToString() + " " + " viewed all four games ";
            
            //convert to decimal, calculate the average amount of spectators and display to screen

            Decimal average = attended / 4;

            lblAvg.Text = "The average amount of spectors at each game was " + " " + average.ToString();

            //calculate the total of win/loss numbers and display to screen

            Int32 wins = Convert.ToInt32(rblResult1.SelectedValue) + Convert.ToInt32(rblResult2.SelectedValue) + Convert.ToInt32(rblResult3.SelectedValue) + Convert.ToInt32(rblResult4.SelectedValue);

            lblWins.Text = "Your team won a total of " + " " + wins.ToString() + " " + "times. Good Job!";

            Int32 losses = 4 - wins;

            lblLosses.Text = "You also lost" + " " + losses.ToString() + " " + "times, might want to work on that!";

            
            //convert to decimal, calculate winning % and display to screen
            Decimal percent = Convert.ToDecimal(wins) / 4;

            lblPercent.Text = "Your winning ratio is" + " " + percent + "now x100 to get your percent!";

            //display all results at the bottom of the page.
            Panel1.Visible = true;
         }
    }
}