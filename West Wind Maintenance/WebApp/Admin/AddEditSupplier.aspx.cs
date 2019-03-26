using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WestWindModels;
using WestWindSystem.BLL;
using WestWindSystem.DataModels;

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
                    BindCountryDropDown();
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
                    Region.Text = result.Region;
                    PostalCode.Text = result.PostalCode;
                    Phone.Text = result.Phone;
                    Fax.Text = result.Fax;
                    CountryDropDown.SelectedValue = result.Country;
                }
                catch (Exception)
                {
                    // Display the error to the user
                    
                }
            }
        }

        protected void AddSupplier_Click(object sender, EventArgs e)
        {
            try
            {
                //TODO: 0) VALIDATION
                // 1) Create a Supplier object from the data in the form
                Supplier item = new Supplier();
                item.CompanyName = CompanyName.Text;
                item.ContactName = ContactName.Text;
                if(!string.IsNullOrWhiteSpace(ContactTitle.Text))
                    item.ContactTitle = ContactTitle.Text; //nullable
                item.Email = Email.Text;
                item.Address = Address.Text;
                item.City = City.Text;
                if (!string.IsNullOrWhiteSpace(Region.Text))
                    item.Region = Region.Text;
                if (!string.IsNullOrWhiteSpace(PostalCode.Text))
                    item.PostalCode = PostalCode.Text;
                item.Phone = Phone.Text;
                if (!string.IsNullOrWhiteSpace(Fax.Text))
                    item.Fax = Fax.Text;
                item.Country = CountryDropDown.SelectedValue;

                // 2) Send the data to the BLL
                var controller = new SupplierController();
                int newSupplierId = controller.AddSupplier(item);

                // 3) Update the form and give feedback to the user
                BindSupplierDropDown(); //because there's a new supplier now
                SupplierDropDown.SelectedValue = newSupplierId.ToString();
                CurrentSupplier.Text = newSupplierId.ToString();
                ShowMessage("Supplier has been added.", STYLE_SUCCESS);
            }
            catch (Exception ex)
            {
                ShowMessage(ex.Message, STYLE_WARNING);
            }
        }

        #endregion //end button events

        #region Private Methods

        private void ShowMessage(string message, string style)
        {
            MessageLabel.Text = message;
            MessageLabel.CssClass = $"alert {style} alert-dismissible";
            MessagePanel.Visible = true;
        }

        private void BindCountryDropDown()
        {
            SupplierController controller = new SupplierController();
            CountryDropDown.DataSource = controller.ListCountries();
            CountryDropDown.DataTextField = nameof(Country.Name);
            CountryDropDown.DataValueField = nameof(Country.Name);
            CountryDropDown.DataBind();
            CountryDropDown.Items.Insert(0, "[Select a country]");
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