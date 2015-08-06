<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_ResourceManage_Storage, App_Web_storage.aspx.53e24a53" %>

<%@ Register Src="~/View/Page/ResourceManage/UserControl/AddStorage.ascx" TagPrefix="AddStorage" TagName="AddStorage" %>
<%@ Register Src="~/View/Page/ResourceManage/UserControl/StorageDetail.ascx" TagPrefix="StorageDetail" TagName="StorageDetail" %>

<asp:Content ID="STORAGE_PAGE"  runat="Server" ContentPlaceHolderID="Rightcontent">
   
    <style type="text/css">
    .panelCss 
    {
      
        display:none;
    }
    .panelShowCss 
    {
        display:block
    }
        .RadGrid 
    {
    outline : none;
    }
   </style>
    <script type="text/javascript">

        var RowInfo =
        {
            StorageID: null,
            StorageName: null,
            StorageGroup: null,
            Path: null,
            Type: null,
            TotalSize: null,
            UsingSpace: null,
            State: null,
            StateDetail: null,
            CreateDate: null,
            ModifyDate: null,
            UpdateDate: null,

            create: function () {
                var obj = new Object();

                obj.StorageID = "";
                obj.StorageName = "";
                obj.StorageGroup = "";
                obj.Path = "";
                obj.Type = "";
                obj.TotalSize = "";
                obj.UsingSpace = "";
                obj.State = "";
                obj.StateDetail = "";
                obj.CreateDate = "";
                obj.ModifyDate = "";
                obj.UpdateDate = "";
                return obj;
            }
        };



        function rowSelected(sender, args) {
            if ($find("<%# ViewChooser.ClientID %>").get_selectedIndex() != 0)
            {
                $find("<%# ViewChooser.ClientID %>").set_selectedIndex(0);
                var con1 = document.getElementById("HostDetailPanelDiv");
                var con2 = document.getElementById("AddHostPanelDiv");

                con1.style.display = "block";
                con2.style.display = "none";
            }

            var row = getValues(sender, args.get_gridDataItem());
            SetValueHost(row);
        }


        function SetValueHost(RowInfo) {
            ($find("<%# AdminDetailPanel.FindControl("StorageDetail").FindControl("TextStorageName").ClientID %>")).set_value(RowInfo.StorageName);
            ($find("<%# AdminDetailPanel.FindControl("StorageDetail").FindControl("TextStoragePath").ClientID %>")).set_value(RowInfo.Path);
            ($find("<%# AdminDetailPanel.FindControl("StorageDetail").FindControl("TextType").ClientID %>")).set_value(RowInfo.Type);
            ($find("<%# AdminDetailPanel.FindControl("StorageDetail").FindControl("TextModifyDay").ClientID %>")).set_value(RowInfo.ModifyDate);
            ($find("<%# AdminDetailPanel.FindControl("StorageDetail").FindControl("TextUpdateDay").ClientID %>")).set_value(RowInfo.UpdateDate);
            ($find("<%# AdminDetailPanel.FindControl("StorageDetail").FindControl("TextStatus").ClientID %>")).set_value(RowInfo.StateDetail);
            ($find("<%# AdminDetailPanel.FindControl("StorageDetail").FindControl("TextCreateDay").ClientID %>")).set_value(RowInfo.CreateDate);

            SetChartSet(parseInt(RowInfo.UsingSpace), parseInt(RowInfo.TotalSize) - parseInt(RowInfo.UsingSpace));
        }


        function SetChartSet(x, x1)
        {
            var newDataSource = [
            {
                "Data": x1, 
                "Name": "사용가능",
                "Color": "#ff9900",
                "IsExploded": true
            },
            {
                "Data": x,
                "Name": "사용중",
                "Color": "#cccccc",
                "IsExploded": false
            }]

            chart = ($find("<%# AdminDetailPanel.FindControl("StorageDetail").FindControl("ChartSize").ClientID %>"));
            var oldDataSource = eval(chart.get_dataSourceJSON());
            chart.set_dataSource(newDataSource);

            //Turning animation on before repainting the chart
            chart.set_transitions(true);

            //Redrawing the chart
            chart.repaint();
        }

        function getValues(radGrid, item) {
            var newData = RowInfo.create();
            newData.StorageID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "StorageID").innerHTML);
            newData.StorageName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "StorageName").innerHTML);
            newData.StorageGroup = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "StorageGroup").innerHTML);
            newData.Path = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Path").innerHTML);
            newData.Type = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Type").innerHTML);
            newData.TotalSize = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "TotalSize").innerHTML);
            newData.UsingSpace = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "UsingSpace").innerHTML);
            newData.State = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "State").innerHTML);
            newData.StateDetail = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "StateDetail").innerHTML);
            newData.CreateDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CreateDate").innerHTML);
            newData.ModifyDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "ModifyDate").innerHTML);
            newData.UpdateDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "UpdateDate").innerHTML);

            return newData;
        }

            function tabSelected(sender, args) {
                if (sender.get_selectedIndex() == 0) {
                    var con1 = document.getElementById("HostDetailPanelDiv");
                    con1.style.display = "block";
                    var con2 = document.getElementById("AddHostPanelDiv");
                    con2.style.display = "none";
                }
                else if (sender.get_selectedIndex() == 1) {
                    var con1 = document.getElementById("HostDetailPanelDiv");
                    con1.style.display = "none";
                    var con2 = document.getElementById("AddHostPanelDiv");
                    con2.style.display = "block";
                }
            }

    </script>

    <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">Storage관리</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>


    <div style="width:100%; height:430px">
        <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false" Height="100%"/>
            <div id="demo" class="demo-container no-bg" style="Height:100%">
            <telerik:RadGrid ID="StorageGrid" runat="server" Width ="100%" Height="100%" Skin="Silk" OnNeedDataSource="StorageGrid_NeedDataSource"
            EnableViewState="False" SelectedItemStyle-BorderStyle="Solid"  OnDeleteCommand="StorageGrid_DeleteCommand" >
            <ClientSettings EnableRowHoverStyle="true">
                <Scrolling UseStaticHeaders="True" AllowScroll="true"/>
                <Selecting AllowRowSelect="true" EnableDragToSelectRows="False" UseClientSelectColumnOnly="false" CellSelectionMode="None" />
                <ClientEvents OnRowSelected="rowSelected" ></ClientEvents>
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" Name="HostTable" CommandItemDisplay="None" HorizontalAlign="Center"
                 AlternatingItemStyle-BorderStyle="Solid" TableLayout="Fixed">
                <Columns>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="ID"  DataField ="ShowStorageID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowStorageID" UniqueName="StorageID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="이름"  DataField ="ShowStorageName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowStorageName" UniqueName="StorageName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="소속그룹"  DataField ="ShowStorageGroup" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowStorageGroup" UniqueName="StorageGroup" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="경로"  DataField ="ShowPath" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowPath" UniqueName="Path" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="타입"  DataField ="ShowType" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowType" UniqueName="Type" HeaderStyle-Width="40"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="총용량"  DataField ="ShowTotalSize" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowTotalSize" UniqueName="TotalSize" HeaderStyle-Width="40"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="사용중용량"  DataField ="ShowUsingSpace" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowUsingSpace" UniqueName="UsingSpace" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="상태"  DataField ="ShowState" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowState" UniqueName="State" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="상태상세"  DataField ="ShowStateDetail" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowStateDetail" UniqueName="StateDetail" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="생성날짜"  DataField ="ShowCreateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowCreateDate" UniqueName="CreateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="수정날짜"  DataField ="ShowModifyDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowModifyDate" UniqueName="ModifyDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                        <telerik:GridBoundColumn DataType="System.String" HeaderText="업데이트날짜"  DataField ="ShowUpdateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowUpdateDate" UniqueName="UpdateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridButtonColumn ConfirmText="해당 Storage을 삭제하시겠습니까?" ConfirmDialogType="RadWindow" HeaderTooltip="Delete" UniqueName="DeleteStorage"
                        ConfirmTitle="Delete" ButtonType="ImageButton" CommandName="Delete" HeaderStyle-Width="15" />
                    </Columns>
             </MasterTableView>
            </telerik:RadGrid>
          </div>
    </div>
    <div style="background-color:#afb3b7; border-radius:3px; background-image:-webkit-linear-gradient(top,#ced2d6 0,#afb3b7 100%)">
        <telerik:RadTabStrip ID="ViewChooser" Skin="Silk" Style="margin-top: 0px;"   EnableViewState="false" 
                SelectedIndex="0" runat="server" OnClientTabSelected="tabSelected">
                   <Tabs >
                      <telerik:RadTab Text="Storage상세/수정" Value="AdminDetail.ascx" ImageUrl="/Images/s.png" Selected="True" />
                      <telerik:RadTab Text="Storage추가" Value="AddAdmin.ascx" ImageUrl="/Images/s.png"  />
                   </Tabs>
         </telerik:RadTabStrip>
    </div>
<div class="content">
        <div class="panelShowCss"; id="HostDetailPanelDiv">
            <asp:Panel runat="server" ID="AdminDetailPanel" Visible="true"> 
                <StorageDetail:StorageDetail ID="StorageDetail" runat="server" Visible="true"/>
            </asp:Panel>
        </div>
        <div class="panelCss" id="AddHostPanelDiv">
            <AddStorage:AddStorage ID="AddStorage" runat="server" Visible="true"  />
        </div>
    </div>
</asp:Content>