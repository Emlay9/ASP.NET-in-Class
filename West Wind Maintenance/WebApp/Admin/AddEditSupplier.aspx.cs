using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WestWindModels;
using WestWindSystem.BLL;

namespace WebApp.Admin
{
    public partial class AddEditSupplier : System.Web.UI.Page
    {
        #region Page Events
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                try
                {
                    //throw new NotImplementedException("TBA");
                    BindSupplierDropDown();
                }
                catch (Exception ex)
                {
                    MessageLabel.Text = ex.Message;
                    MessagePanel.CssClass = "alert alert-warning alert-dismissible";
                    MessagePanel.Visible = true;
                }
            }
        }
        #endregion

        #region Button Events
        protected void LookUpSupplier_Click(object sender, EventArgs e)
        {

        }


        #endregion

        #region Private Methods
        private void BindSupplierDropDown()
        {
            SupplierController controller = new SupplierController();
            // SupplieDropDown is an object of type DropDownList
            // The .DataSource property takes any enumerable list of data
            SupplierDropDown.DataSource = controller.ListSuppliers();
            // The .DataTextField property specifies what property name should be called to get the data to display for the drop-down
            SupplierDropDown.DataTextField = nameof(Supplier.CompanyName);
            SupplierDropDown.DataValueField = nameof(Supplier.SupplierID);
            SupplierDropDown.DataBind();
            SupplierDropDown.Items.Insert(0, new ListItem("[Select a supplier]", "-1"));
        }
        #endregion
    }
}