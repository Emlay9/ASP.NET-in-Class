using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KDContest.Backend;

namespace KDContest
{
    public partial class KDContest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //Check the validation controls 
            if (IsValid)
            {
                if(AgreeToTerms.Checked && !HasDuplicates())
                {
                    MessageLabel.Text = "Good luck on the contest!";
                    //Taking the data from the controls on the form, and creating objects
                    Entry submission = new Entry(EntryCode.Text, Email.Text);

                    Entrant person = new Entrant(FirstName.Text, LastName.Text, Email.Text, City.Text, Province.SelectedValue /*for a dropdown list*/, PostalCode.Text, int.Parse(Age.Text));

                    MessageLabel.Text = "Good luck on the contest!";

                    
                    Entries.Add(submission);
                    PopulateGridView();
                }
                else
                {
                    if (!AgreeToTerms.Checked)
                        MessageLabel.Text = "You MUST agree to the terms of the contest!";
                    else //it's because of a duplicate submission
                        MessageLabel.Text = "That entry code has already been used";
                }
            }
        }

        private bool HasDuplicates()
        {
            string code = EntryCode.Text;
            bool duplicate = false;
            foreach(var item in Entries)
                if (item.EntryCode == code)
                    duplicate = true;
                return duplicate;
        }

        private static List<Entry> Entries = new List<Entry>();

        private void PopulateGridView()
        {
            Submissions.DataSource = Entries;
            Submissions.DataBind(); //Take the data and fill up the GridView's content
        }

        protected void ClearForm_Click(object sender, EventArgs e)
        {
            EntryCode.Text = string.Empty;
            FirstName.Text = string.Empty;
            LastName.Text = string.Empty;
            Email.Text = string.Empty;
            City.Text = string.Empty;
            Province.SelectedIndex = 0;
            PostalCode.Text = string.Empty;
            Age.Text = string.Empty;

            Entries.Clear();
            PopulateGridView();
            MessageLabel.Text = "";

        }
    }
}