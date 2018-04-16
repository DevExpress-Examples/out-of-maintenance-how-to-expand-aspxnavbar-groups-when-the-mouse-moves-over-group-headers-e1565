using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml;
using DevExpress.Web.ASPxNavBar;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
    }
    protected void ASPxNavBar1_GroupDataBound(object source, NavBarGroupEventArgs e) {
        IHierarchyData hierarchyData = (e.Group.DataItem as IHierarchyData);
        XmlElement xmlElement = hierarchyData.Item as XmlElement;
        XmlAttributeCollection attributes = xmlElement.Attributes;
        if(xmlElement.Attributes["View"] != null)
            e.Group.Text = xmlElement.Attributes["View"].Value;
    }
}
