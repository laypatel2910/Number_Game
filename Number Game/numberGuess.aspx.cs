using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Number_Game
{
    public partial class numberGuess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Random rnd = new Random();
                Session["RandomNumber"] = rnd.Next(1, 101);
                Session["AttemptCount"] = 10;
            }
        }

        protected void btnSubmitValue_Click(object sender, EventArgs e)
        {
            if (Session["RandomNumber"] == null || Session["AttemptCount"] == null)
            {
                Response.Write("<script>alert('Session has expired. Please refresh the page to start a new game.')</script>");
                return;
            }
            int userNumber = Convert.ToInt32(txtNumberGuess.Text);
            int randomNumber = (int)Session["RandomNumber"];
            int attemptCount = (int)Session["AttemptCount"];
            attemptCount--;
            Session["AttemptCount"] = attemptCount;
            if (userNumber > 100 )
            {
                lblMessage.Text = "please Enter number between 1 to 100";
            }
            else
            {
                lblMessage.Text = " ";
                if (attemptCount <= 0)
                {
                    Response.Write("<script>alert('You lost the game')</script>");
                    Session["RandomNumber"] = null;
                    lblattempts.Text = "You have " + attemptCount + " attempts left.";
                    Response.Redirect("Lost.aspx");
                }
                else
                {
                    if (randomNumber == userNumber)
                    {

                        Response.Write("<script>alert('" + randomNumber + " is correct.')</script>");
                        Response.Write("<script>alert('congratulations Won in " + (10 - attemptCount) + " Attempt.')</script>");
                        Session["RandomNumber"] = null;
                        Response.Redirect("Won.aspx");
                        return;
                    }
                    else if (randomNumber < userNumber)
                    {
                        Response.Write("<script>alert('" + userNumber + " is too high')</script>");
                        lblattempts.Text = "You have " + attemptCount + " attempts left.";
                    }
                    else
                    {
                        Response.Write("<script>alert('" + userNumber + " is too low')</script>");
                        lblattempts.Text = "You have " + attemptCount + " attempts left.";
                    }
                }
                txtNumberGuess.Text = "";
            }
        }
    }
}