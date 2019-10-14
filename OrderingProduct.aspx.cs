using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace Prog2
{
    public partial class OrderingProduct : System.Web.UI.Page
    {
        double tax = .055;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack && (bool)Session["Prog2_Computed"])
           {
                txtID.Text = (string)Session["Prog2_ProductID"];
                txtQuantity.Text = (string)Session["Prog2_ProductQuantity"];
                txtPrice.Text = (string)Session["Prog2_ProductPrice"];
                CalculateTotals();
            }
        }

        

        protected void CalculateTotals()
        {
            double price;
            Double.TryParse(txtPrice.Text, out price);
            double quantity;
            Double.TryParse(txtQuantity.Text, out quantity);
            double value = price * quantity;
            double orderTax = value * tax;
            double grandTotal = value + orderTax;
            txtSubTotal.Text = String.Format(System.Globalization.CultureInfo.CurrentCulture, "{0:C2}", value);
            txtTax.Text = String.Format(System.Globalization.CultureInfo.CurrentCulture, "{0:C2}", orderTax);
            txtGrandTotal.Text = String.Format(System.Globalization.CultureInfo.CurrentCulture, "{0:C2}", grandTotal);
        }

        protected void btnCompute_Click(object sender, EventArgs e)
        {
            CalculateTotals();
            Session["Prog2_ProductPrice"] = txtPrice.Text;
            Session["Prog2_ProductQuantity"] = txtQuantity.Text;
            Session["Prog2_ProductID"] = txtID.Text;
            Session["Prog2_Computed"] = true;
            txtPrice.ReadOnly = true;
            txtQuantity.ReadOnly = true;
            txtID.ReadOnly = true;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtPrice.ReadOnly = false;
            txtQuantity.ReadOnly = false;
            txtID.ReadOnly = false;
            Session["Prog2_ProductID"] = "";
            Session["Prog2_ProductPrice"] = "";
            Session["Prog2_ProductQuantity"] = "";
            Session["Prog2_Computed"] = false;
            txtID.Text = (string)Session["Prog2_ProductID"];
            txtQuantity.Text = (string)Session["Prog2_ProductQuantity"];
            txtPrice.Text = (string)Session["Prog2_ProductPrice"];
            CalculateTotals();
            txtID.Focus();
        }
    }
}