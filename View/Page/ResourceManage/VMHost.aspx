<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_ResourceManage_VMHost, App_Web_vmhost.aspx.53e24a53" %>


<%@ Register Src="~/View/Page/ResourceManage/UserControl/AddHost.ascx" TagPrefix="AddHost" TagName="AddHost" %>
<%@ Register Src="~/View/Page/ResourceManage/UserControl/HostDetal.ascx" TagPrefix="HostDetail" TagName="HostDetail" %>

<asp:Content ID="VMHOST_PAGE"  runat="Server" ContentPlaceHolderID="Rightcontent">
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
            ID: null,
            Name: null,
            Group: null,
            IP: null,
            State: null,
            StateDetail: null,
            CreateDate: null,
            ModifyDate: null,
            UpdateDate: null,
            CpuCore: null,
            CpuPerformance: null,
            TotalMemory: null,
            UsingMemory: null,
            MainDiskTotalSize: null,
            MainDiskUsingSize: null,
            NetworkUplink: null,
            NetworkDownlink: null,

            create: function () {
                var obj = new Object();

                obj.ID = "";
                obj.Name = "";
                obj.Group = "";
                obj.IP = "";
                obj.State = "";
                obj.StateDetail = "";
                obj.CreateDate = "";
                obj.ModifyDate = "";
                obj.UpdateDate = "";
                obj.CpuCore = "";
                obj.CpuPerformance = "";
                obj.TotalMemory = "";
                obj.UsingMemory = "";
                obj.MainDiskTotalSize = "";
                obj.MainDiskUsingSize = "";
                obj.NetworkUplink = "";
                obj.NetworkDownlink = "";

                return obj;
            }
        };

        function rowSelected(sender, args) {
            if ($find("<%# ViewChooser.ClientID %>").get_selectedIndex() != 0) {
                $find("<%# ViewChooser.ClientID %>").set_selectedIndex(0);
                con1.style.display = "block";
                con2.style.display = "none";
            }
            var con1 = document.getElementById("HostDetailPanelDiv");
            var con2 = document.getElementById("AddHostPanelDiv");

           var row = getValues(sender, args.get_gridDataItem());
           SetValueHost(row);
        }


        function SetValueHost(RowInfo) {
            ($find("<%# AdminDetailPanel.FindControl("HostDetail").FindControl("TextHostName").ClientID %>")).set_value(RowInfo.Name);
            ($find("<%# AdminDetailPanel.FindControl("HostDetail").FindControl("TextIP").ClientID %>")).set_value(RowInfo.IP);
            ($find("<%# AdminDetailPanel.FindControl("HostDetail").FindControl("TextState").ClientID %>")).set_value(RowInfo.StateDetail);
            ($find("<%# AdminDetailPanel.FindControl("HostDetail").FindControl("TextCreateDate").ClientID %>")).set_value(RowInfo.CreateDate);
            ($find("<%# AdminDetailPanel.FindControl("HostDetail").FindControl("TextModifyDate").ClientID %>")).set_value(RowInfo.ModifyDate);
            ($find("<%# AdminDetailPanel.FindControl("HostDetail").FindControl("TextUpdateDate").ClientID %>")).set_value(RowInfo.UpdateDate);




           try
           {
               try
               {
                   SetChartMemory(parseInt(RowInfo.UsingMemory), parseInt(RowInfo.TotalMemory) - parseInt(RowInfo.UsingMemory));
               }
               catch(e)
               {
                   SetChartMemory(0, 0);
               }
               try
               {
                   SetChartDisk(parseInt(RowInfo.MainDiskUsingSize), parseInt(RowInfo.MainDiskTotalSize) - parseInt(RowInfo.MainDiskUsingSize));
               }
               catch (e) {
                   SetChartDisk(0, 0);

               }
               if (RowInfo.Group != "&nbsp;") {
                   ($find("<%# AdminDetailPanel.FindControl("HostDetail").FindControl("ComboGroup").ClientID %>")).findItemByText(RowInfo.Group).select();
               }
               else {
                   ($find("<%# AdminDetailPanel.FindControl("HostDetail").FindControl("ComboGroup").ClientID %>").select(0));
               }
           }
           catch(e)
           {
           }
        }

        function getValues(radGrid, item) {
            var newData = RowInfo.create();
            newData.ID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "HostID").innerHTML);
            newData.Name = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "HostName").innerHTML);
            newData.Group = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "GroupName").innerHTML);
            newData.IP = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "IP").innerHTML);
            newData.State = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "State").innerHTML);
            newData.StateDetail = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "StateDetail").innerHTML);
            newData.CreateDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CreateDate").innerHTML);
            newData.ModifyDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "ModifyDate").innerHTML);
            newData.UpdateDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "UpdateDate").innerHTML);

            newData.CpuCore = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CpuCore").innerHTML);
            newData.CpuPerformance = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CpuPerformance").innerHTML);
            newData.TotalMemory = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "TotalMemory").innerHTML);
            newData.UsingMemory = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "UsingMemory").innerHTML);
            newData.MainDiskTotalSize = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "MainDiskTotalSize").innerHTML);
            newData.MainDiskUsingSize = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "MainDiskUsingSize").innerHTML);
            newData.NetworkUplink = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "NetworkUplink").innerHTML);
            newData.NetworkDownlink = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "NetworkDownlink").innerHTML);
            
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

        function SetChartMemory(x, x1) {
            if (isNaN(x)|| isNaN(x1)) {
                x = 1;
                x1 = 1;
            }
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

            chart = ($find("<%# AdminDetailPanel.FindControl("HostDetail").FindControl("ChartMemory").ClientID %>"));
            var oldDataSource = eval(chart.get_dataSourceJSON());
            chart.set_dataSource(newDataSource);

                    //Turning animation on before repainting the chart
            chart.set_transitions(true);

                    //Redrawing the chart
            chart.repaint();
        }
        function SetChartDisk(x, x1) {
            if (isNaN(x) || isNaN(x1)) {
                x = 1;
                x1 = 1;
            }
            var newDataSource = [
            {
                "Data": x1,
                "Name": "사용가능",
                "Color": "#8680AA",
                "IsExploded": true
            },
            {
                "Data": x,
                "Name": "사용중",
                "Color": "#cccccc",
                "IsExploded": false
            }]

            chart = ($find("<%# AdminDetailPanel.FindControl("HostDetail").FindControl("ChartDisk").ClientID %>"));
            var oldDataSource = eval(chart.get_dataSourceJSON());
            chart.set_dataSource(newDataSource);

            //Turning animation on before repainting the chart
            chart.set_transitions(true);

            //Redrawing the chart
            chart.repaint();
        }



    </script>


    <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">VM Host 관리</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>


    <div style="width:100%; height:400px">
        <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false" Height="100%"/>
            <div id="demo" class="demo-container no-bg" style="Height:100%">
            <telerik:RadGrid ID="HostGrid" runat="server" Width ="100%" Height="100%" Skin="Silk" OnNeedDataSource="HostGrid_NeedDataSource"
            EnableViewState="False" SelectedItemStyle-BorderStyle="Solid"  OnDeleteCommand="HostGrid_DeleteCommand" >
            <ClientSettings EnableRowHoverStyle="true">
                <Scrolling UseStaticHeaders="True" AllowScroll="true"/>
                <Selecting AllowRowSelect="true" EnableDragToSelectRows="False" UseClientSelectColumnOnly="false" CellSelectionMode="None" />
                <ClientEvents OnRowSelected="rowSelected" ></ClientEvents>
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" Name="HostTable" CommandItemDisplay="None" HorizontalAlign="Center"
                 AlternatingItemStyle-BorderStyle="Solid" TableLayout="Fixed">
                
                <Columns>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="HostID"  DataField ="ShowHostID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowHostID" UniqueName="HostID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="호스트명"  DataField ="ShowHostName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowHostName" UniqueName="HostName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="소속그룹"  DataField ="ShowGroupName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowGroupName" UniqueName="GroupName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="IP"  DataField ="ShowIP" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowIP" UniqueName="IP" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="상태"  DataField ="ShowState" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowState" UniqueName="State" HeaderStyle-Width="40"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="상태상세"  DataField ="ShowStateDetail" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowStateDetail" UniqueName="StateDetail" HeaderStyle-Width="40"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="생성날짜"  DataField ="ShowCreateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowCreateDate" UniqueName="CreateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="수정날짜"  DataField ="ShowModifyDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowModifyDate" UniqueName="ModifyDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="업데이트날짜"  DataField ="ShowUpdateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowCreateDate" UniqueName="UpdateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="CPU"  DataField ="CpuCore" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="CpuCore" UniqueName="CpuCore" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="CpuPerformance"  DataField ="CpuPerformance" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="CpuPerformance" UniqueName="CpuPerformance" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="TotalMemory"  DataField ="TotalMemory" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="TotalMemory" UniqueName="TotalMemory" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="UsingMemory"  DataField ="UsingMemory" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="UsingMemory" UniqueName="UsingMemory" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="MainDiskTotalSize"  DataField ="MainDiskTotalSize" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="MainDiskTotalSize" UniqueName="MainDiskTotalSize" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="MainDiskUsingSize"  DataField ="ShowUpdateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="MainDiskUsingSize" UniqueName="MainDiskUsingSize" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="PerformanceUpdateDate"  DataField ="PerformanceUpdateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="PerformanceUpdateDate" UniqueName="PerformanceUpdateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="DiskPerformanceUpdateDate"  DataField ="DiskPerformanceUpdateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="DiskPerformanceUpdateDate" UniqueName="DiskPerformanceUpdateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="NetworkUplink"  DataField ="NetworkUplink" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="NetworkUplink" UniqueName="NetworkUplink" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="NetworkDownlink"  DataField ="NetworkDownlink" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="NetworkDownlink" UniqueName="NetworkDownlink" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridButtonColumn ConfirmText="해당 호스트를 삭제하시겠습니까?" ConfirmDialogType="RadWindow" HeaderTooltip="Delete" UniqueName="DeleteAdmin"
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
                      <telerik:RadTab Text="Host상세/수정" Value="AdminDetail.ascx" ImageUrl="/Images/s.png" Selected="True" />
                      <telerik:RadTab Text="Host추가" Value="AddAdmin.ascx" ImageUrl="/Images/s.png"  />
                   </Tabs>
         </telerik:RadTabStrip>
    </div>
    <div class="content">
        <div class="panelShowCss"; id="HostDetailPanelDiv">
            <asp:Panel runat="server" ID="AdminDetailPanel" Visible="true"> 
                <HostDetail:HostDetail ID="HostDetail" runat="server" Visible="true"/>
            </asp:Panel>
        </div>
        <div class="panelCss" id="AddHostPanelDiv">
            <AddHost:AddHost ID="AddHost" runat="server" Visible="true"  />
        </div>
    </div>
</asp:Content>