# ASPxGridView - How to manipulate the control inside DataItemTemplate when a row is selected


<p>This example demonstrates how to manipulate the control inside DataItemTemplate when a row is selected.</p><p>1) Define the<strong> ASPxSpinEdit </strong>editor inside a column's DataItemTemplate and bind the editor with a corresponding column value;<br />
2) Handle the <strong>ASPxSpinEdit.Init</strong> event and set its unique <strong>ASPxSpinEdit.ClientInstanceName</strong> property based on the row's VisibleIndex;<br />
3) Handle the client-side <strong>ASPxClientGridView.SelectionChanged</strong> event and manipulate the <strong>ASPxClientSpinEdit.SetEnabled</strong> property based on the row selection.</p>

<br/>


