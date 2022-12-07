Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub spin_Init(ByVal sender As Object, ByVal e As EventArgs)
		Dim spin As ASPxSpinEdit = CType(sender, ASPxSpinEdit)
		Dim templateContainer As GridViewDataItemTemplateContainer = CType(spin.NamingContainer, GridViewDataItemTemplateContainer)
		spin.ID = String.Format("spUnitPrice_{0}", templateContainer.VisibleIndex)
		spin.ClientInstanceName = String.Format("spUnitPrice_{0}", templateContainer.VisibleIndex)
	End Sub
End Class
