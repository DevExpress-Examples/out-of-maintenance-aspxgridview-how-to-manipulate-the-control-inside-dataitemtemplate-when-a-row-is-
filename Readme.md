<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128535064/13.1.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3949)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to manipulate the control inside DataItemTemplate when a row is selected
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3949/)**
<!-- run online end -->


<p>This example demonstrates how to manipulate the control inside DataItemTemplate when a row is selected.</p><p>1) Define the<strong> ASPxSpinEdit </strong>editor inside a column's DataItemTemplate and bind the editor with a corresponding column value;<br />
2) Handle the <strong>ASPxSpinEdit.Init</strong> event and set its unique <strong>ASPxSpinEdit.ClientInstanceName</strong> property based on the row's VisibleIndex;<br />
3) Handle the client-side <strong>ASPxClientGridView.SelectionChanged</strong> event and manipulate the <strong>ASPxClientSpinEdit.SetEnabled</strong> property based on the row selection.</p>

<br/>


