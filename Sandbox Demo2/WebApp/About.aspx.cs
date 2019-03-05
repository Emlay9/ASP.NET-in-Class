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
        private DateTime PageLoadTime; //a simple field
        protected void Page_PreRender(object sender, EventArgs e)
        {
            //diff is a time span object
            var diff = PageLoadTime - DateTime.Now;
            MessageLabel.Text = $"This page took {diff.Milliseconds} milliseconds to run.<hr>" + MessageLabel.Text;
        }

        //Page_Load is a stage of processing the page where you get to set up aspects of the page's content before any of the events of your
        // page's controls are processed.
        protected void Page_Load(object sender, EventArgs e)
        {
            PageLoadTime = DateTime.Now;
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

        protected void Interact_Click(object sender, EventArgs e)
        {

            //This method was generated when I chose <Create new event> in the OnClick="" attribute
            string output = "The following is what you submitted on the form:";
            output += "<ul>"; //You can include HTML tags in your string which get output as html

            // These are the various TextBox Controls
            // We use the .Text property to get/set the value of the textbox
            output += $"<li>Your password is '{YourPassWord.Text}'</li>";
            DateTime dob;
            if(DateTime.TryParse(DateOfBirth.Text, out dob))
                output += $"<li>Your date of birth is '{dob.ToLongDateString()}'</li>";
            if(!string.IsNullOrWhiteSpace(SkyColor.Text))
                output += $"<li>The sky color is '{SkyColor.Text}'</li>";
            output += $"<li>Your school email is '{SchoolEmail.Text}'</li>";
            output += $"<li>Your bio is '{Bio.Text}'</li>";

            string agreed;
            if (AgreeToTerms.Checked) // .Checked is tru if the checkbox was checked
                agreed = "YoU JuSt SiGnEd YoUr LiFe AwAy";
            else
                agreed = "You must agree to the terms before continuing";
            output += $"<li>'{agreed}'</li>";

            //A DropDownList has a .SelectedValue property
            output += $"<li>You chose the {CareerPath.SelectedValue} career path.</li>";

            List<string> skills = new List<string>();
            foreach (ListItem item in Languages.Items)
                if (item.Selected)
                    skills.Add(item.Value);
            output += $"<li>You identified the following programming languages: {string.Join(", ", skills)}</li>";

            //A radioButtonList will have only one item selected, so use .SelectedValue property
            output += $"<li>Your gender is {Gender.SelectedValue}</li>";

            output += "<ul>";

            // REMEMEBER: every <asp: > control you place on the form is represented in this code-behind class as an instance of a class
            //  Also, this whole page class (About class) is recreated by the web server on every requwst for this page.

            Results.Text = output; //Results is an instance of the label class
                                   // The label class defines a property called Text
                                   //which holds the text that will be displayed in the browser
        }
    }
}