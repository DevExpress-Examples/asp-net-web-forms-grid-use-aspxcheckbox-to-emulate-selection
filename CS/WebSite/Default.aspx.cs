using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cbCheck_Load(object sender, EventArgs e)
    {
        ASPxCheckBox cb = sender as ASPxCheckBox;

        GridViewDataItemTemplateContainer container = cb.NamingContainer as GridViewDataItemTemplateContainer;
        cb.ClientInstanceName = String.Format("cbCheck{0}", container.VisibleIndex);
        cb.Checked = grid.Selection.IsRowSelected(container.VisibleIndex);

        cb.ClientSideEvents.CheckedChanged = String.Format("function (s, e) {{ grid.SelectRowOnPage ({0}, s.GetChecked()); }}", container.VisibleIndex);
    }
}
