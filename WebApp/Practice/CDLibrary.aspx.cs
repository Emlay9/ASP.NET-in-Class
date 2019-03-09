using System;
using System.Collections.Generic; //List namespace
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Practice.Classes; //brings in the classes

namespace WebApp.Practice
{
    public partial class CDLibrary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private static List<CD> CDs = new List<CD>();

        protected void AddCD_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                CD theCD = new CD();
                theCD.Barcode = Barcode.Text;
                theCD.Title = CDTitle.Text;
                theCD.Artists = Artists.Text;
                theCD.Year = int.Parse(Year.Text);
                theCD.Tracks = int.Parse(TracksNumber.Text);

                // Add the cd to the list
                CDs.Add(theCD);

                // Populate the GridView
                CDGrid.DataSource = CDs;
                CDGrid.DataBind();
            }
        }
    }
}