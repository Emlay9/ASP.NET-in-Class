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
        #region Private Properties and Fields
        const string STYLE_WARNING = "alert-warning"; // This is a Bootstrap style
        const string STYLE_INFO = "alert-info";
        const string STYLE_SUCCESS = "alert-success";
        #endregion
        #region Page Events
        protected void Page_Load(object sender, EventArgs e)
        {
            MessagePanel.Visible = false; //hide messages
            if(!IsPostBack)
            {
                try
                {
                    //throw new NotImplementedException("TBA");
                    BindSupplierDropDown();
                }
                catch (Exception ex)
                {
                    ShowMessage(ex.Message, STYLE_WARNING);
                }
            }
        }
        #endregion

        #region Button Events
        protected void LookUpSupplier_Click(object sender, EventArgs e)
        {
            // Check that the supplier selected is not the prompt line (index 0)
            if(SupplierDropDown.SelectedIndex == 0)
            {
                //Error Message
                ShowMessage("Please select the supplier before clicking the lookup button.", STYLE_INFO);
            }
            else
            {
                try
                {
                    // Get the supplier info from the BLL
                    int supplierID = int.Parse(SupplierDropDown.SelectedValue);
                    var controller = new SupplierController();
                    var result = controller.GetSupplier(supplierID);
                    //  "Unpack" the object into the form's control
                    CurrentSupplier.Text = result.SupplierID.ToString();
                    CompanyName.Text = result.CompanyName;
                    ContactTitle.Text = result.ContactTitle;
                    ContactName.Text = result.CompanyName;
                    Email.Text = result.Email;
                    Address.Text = result.Address;
                    City.Text = result.City;
                    PostalCode.Text = result.PostalCode;
                    Phone.Text = result.Phone;
                    Fax.Text = result.Fax;
                }
                catch (Exception)
                {
                    // Display the error to the user
                    
                }
            }
        }

        #endregion

        #region Private Methods

        private void ShowMessage(string message, string style)
        {
            MessageLabel.Text = message;
            MessageLabel.CssClass = $"alert {style} alert-dismissible";
            MessagePanel.Visible = true;
        }


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