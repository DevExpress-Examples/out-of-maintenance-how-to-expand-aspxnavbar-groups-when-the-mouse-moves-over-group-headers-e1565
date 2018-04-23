Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.Xml
Imports DevExpress.Web.ASPxNavBar

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub
	Protected Sub ASPxNavBar1_GroupDataBound(ByVal source As Object, ByVal e As NavBarGroupEventArgs)
		Dim hierarchyData As IHierarchyData = (TryCast(e.Group.DataItem, IHierarchyData))
		Dim xmlElement As XmlElement = TryCast(hierarchyData.Item, XmlElement)
		Dim attributes As XmlAttributeCollection = xmlElement.Attributes

		If xmlElement.Attributes("View") IsNot Nothing Then
			e.Group.Text = xmlElement.Attributes("View").Value
		End If
	End Sub
End Class
