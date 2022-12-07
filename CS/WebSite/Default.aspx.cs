using System;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page {
    protected void spin_Init(object sender, EventArgs e) {
        ASPxSpinEdit spin = (ASPxSpinEdit)sender;
        GridViewDataItemTemplateContainer templateContainer = (GridViewDataItemTemplateContainer)spin.NamingContainer;
        spin.ID = string.Format("spUnitPrice_{0}", templateContainer.VisibleIndex);
        spin.ClientInstanceName = string.Format("spUnitPrice_{0}", templateContainer.VisibleIndex);
    }
}
