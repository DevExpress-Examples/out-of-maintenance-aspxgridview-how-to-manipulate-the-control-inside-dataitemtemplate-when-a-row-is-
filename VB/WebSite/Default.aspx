<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v11.2, Version=11.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v11.2, Version=11.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>

	<script type="text/javascript">
		function OnSelectionChanged(s, e) {
			var spin = ASPxClientControl.GetControlCollection().GetByName('spUnitPrice_' + e.visibleIndex.toString());
			spin.SetEnabled(e.isSelected);
		}
	</script>

</head>
<body>
	<form id="form1" runat="server">
	<dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="ads">
		<ClientSideEvents SelectionChanged="OnSelectionChanged" />
		<Columns>
			<dx:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0">
			</dx:GridViewCommandColumn>
			<dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="2">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="3">
				<DataItemTemplate>
					<dx:ASPxSpinEdit ID="spin" runat="server" ClientEnabled="false" OnInit="spin_Init" Value='<%#Bind("UnitPrice")%>'/>
				</DataItemTemplate>
			</dx:GridViewDataTextColumn>
		</Columns>
	</dx:ASPxGridView>
	<asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/Northwind.mdb"
		SelectCommand="SELECT [ProductName], [CategoryID], [UnitPrice] FROM [Products]">
	</asp:AccessDataSource>
	</form>
</body>
</html>