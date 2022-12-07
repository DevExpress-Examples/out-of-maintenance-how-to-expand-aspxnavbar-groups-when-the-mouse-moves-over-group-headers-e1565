<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web"
    TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web"
    TagPrefix="dxnb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     
	<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Charts.xml" XPath="//Chart" />

	<dxnb:ASPxNavBar Width="600px" ClientInstanceName="ASPxNavBarClientControl" ID="ASPxNavBar1" runat="server" DataSourceID="XmlDataSource1" EnableAnimation="True" OnGroupDataBound="ASPxNavBar1_GroupDataBound" AutoCollapse="True" ExpandGroupAction="MouseOver" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" GroupSpacing="1px">
		<GroupContentTemplate>
			<table border="0" cellpadding="0" cellspacing="0"><tr>
			<td valign="top"><dxe:ASPxImage ID="Image1" runat="server" ImageUrl='<%# Container.EvalDataItem("BigImageUrl") %>' AlternateText='<%# Container.EvalDataItem("View") %>' /></td>
			<td valign="top" style="padding-left: 10px; color: #9D9D9D;"><div class="Hint"><dxe:ASPxLabel ID="Label2" runat="server" Text='<%# Container.EvalDataItem("Description") %>' /></div></td>
			</tr></table>
		</GroupContentTemplate>
		<GroupContentStyle>
			<Paddings Padding="7px" />
			<Border BorderWidth="0px" />
		</GroupContentStyle>
		<GroupHeaderStyle BackColor="#888888" Font-Bold="True" Font-Underline="False" ForeColor="White">
			<Paddings Padding="3px" PaddingLeft="7px" />
			<Border BorderWidth="0px" />
		</GroupHeaderStyle>
		<Paddings Padding="1px" />
		<Border BorderColor="#A8A8A8" BorderStyle="Solid" BorderWidth="1px" />
	</dxnb:ASPxNavBar>        
     </div>
    </form>
</body>
</html>
