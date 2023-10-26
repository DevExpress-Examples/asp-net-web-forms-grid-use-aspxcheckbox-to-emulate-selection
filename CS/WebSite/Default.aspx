<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to use ASPxCheckBox in DataItemTemplate to emulate a selection</title>
</head>
<body>
    <form id="frm" runat="server">
    <div>
        <dxwgv:ASPxGridView ID="grid" runat="server" ClientInstanceName="grid" 
            AutoGenerateColumns="False" DataSourceID="sds" KeyFieldName="ProductID">
            <Columns>
                <dxwgv:GridViewDataTextColumn Caption="#" VisibleIndex="0">
                    <DataItemTemplate>
                        <dxe:ASPxCheckBox ID="cbCheck" runat="server" AutoPostBack="false" OnLoad="cbCheck_Load" />
                    </DataItemTemplate>
                    <HeaderTemplate >
                        <dxe:ASPxCheckBox ID="SelectAllCheckBox" runat="server" ToolTip="Select/Unselect all rows on the page"
                            ClientSideEvents-CheckedChanged="function(s, e) { grid.SelectAllRowsOnPage(s.GetChecked()); grid.PerformCallback(); }" />
                    </HeaderTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ProductID" />
                <dxwgv:GridViewDataTextColumn FieldName="ProductName" />
                <dxwgv:GridViewDataTextColumn FieldName="QuantityPerUnit" />
                <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" />
                <dxwgv:GridViewDataTextColumn FieldName="UnitsInStock" />
                <dxwgv:GridViewDataTextColumn FieldName="UnitsOnOrder" />
                <dxwgv:GridViewDataTextColumn FieldName="ReorderLevel" />
            </Columns>
        </dxwgv:ASPxGridView>
        <asp:SqlDataSource ID="sds" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [ProductID], [ProductName], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel] FROM [Products]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
