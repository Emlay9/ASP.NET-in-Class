using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class About : Page
    {
        //Page_Load is a stage of processing the page where you get to set up aspects of the page's content before any of the events of your
        // page's controls are processed.
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) // !IsPostBack means a GET request
            {
                //sets the text of the MessageLabel label
                MessageLabel.Text = "Tell us about yourself! You can trust us!";
                // Label    .Sting

            }
            else
            {
                MessageLabel.Text = String.Empty;
            }
        }

        // this method was created when we added the onClick event in the About.aspx page
        protected void GetInitials_Click(object sender, EventArgs e)
        {
            //this method is what gets called when the <asp:LinkButton ID="GetInitials" ... is clicked.
            //We can say that this method "handles" the click event of that button/link.

            //FullName.Text gets the text that was entered into the textbox
            //creates an array of strings (spacebar as delimeter)
            var nameParts = FullName.Text.Split(' ');
            //Construct the initials by taking the first character of each word part
            string result = "";
            foreach(var part in nameParts)
            {
                if (!string.IsNullOrWhiteSpace(part))
                {
                    result += $"{part[0]}.";
                }
            }
            //Place the result in the label on the form 
            Initials.Text = result;

            if (string.IsNullOrWhiteSpace(result))
            {
                MessageLabel.Text = "I can't get initials from empty text...";
                MessageLabel.CssClass = "bg-info";
            }
            else
                ReverseName.Visible = true;
        }

        protected void ReverseName_Click(object sender, EventArgs e)
        {
            string reversed = string.Join("", FullName.Text.ToArray().Reverse());
            MessageLabel.Text = $"Your name reversed is <b>{reversed}</b>";
        }
    }
}