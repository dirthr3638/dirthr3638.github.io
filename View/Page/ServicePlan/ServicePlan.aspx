<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_ServicePlan_ServicePlan, App_Web_serviceplan.aspx.3f79e8dd" %>

<%@ Register Src="~/View/Page/ServicePlan/UserControl/AddServicePlan.ascx" TagPrefix="AddServicePlan" TagName="AddServicePlan" %>
<%@ Register Src="~/View/Page/ServicePlan/UserControl/ServicePlanDetail.ascx" TagPrefix="ServicePlanDetail" TagName="ServicePlanDetail" %>

<asp:Content ID="PolicyContent"  runat="Server" ContentPlaceHolderID="Rightcontent">  
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
            Index: null,
            SPID: null,
            Name: null,
            HSID: null,   
            HostGroupName :null,	
            STID :null,    
            StorageGroupName :null,   
            VTID :null,   
            IPID :null,   
            CLID :null,   
            CollectionName :null,
            CollectionType :null,
            CollectionSize :null,
            CPUCore :null,
            Memory :null,
            NICName :null,
            CreateDate :null,
            ModifyDate: null,

            create: function () {
            var obj = new Object();

            obj.Index = "";
            obj.SPID = "";
            obj.Name = "";
            obj.HSID = "";
            obj.HostGroupName = "";
            obj.STID = "";
            obj.StorageGroupName = "";
            obj.VTID = "";
            obj.IPID = "";
            obj.CLID = "";
            obj.CollectionName = "";
            obj.CollectionType = "";
            obj.CollectionSize = "";
            obj.CPUCore = "";
            obj.Memory = "";
            obj.NICName = "";
            obj.CreateDate = "";
            obj.ModifyDate = "";
            return obj;
            }
        };

    function rowSelected(sender, args) {

        $find("<%# ViewChooser.ClientID %>").set_selectedIndex(0);
        var row = getValues(sender, args.get_gridDataItem());
        SetValue(row);
    }


    function SetValue(RowInfo) {
        setTimeout(function(){
            SetHostRadio(RowInfo);
        }, 10);
        
        setTimeout(function () {
            SetSTRadio(RowInfo);
        }, 200);

        setTimeout(function () {
            SetCombo(RowInfo);
        }, 600);
        
        SetSlider(RowInfo);
    }

    function SetHostRadio(RowInfo) {
        if (RowInfo.HSID == "") {
            ($find("<%# AdminDetailPanel.FindControl("ServicePlanDetail").FindControl("RadioHostGroup").ClientID %>")).click();
        }
        else {
            ($find("<%# AdminDetailPanel.FindControl("ServicePlanDetail").FindControl("RadioHost").ClientID %>")).click();
        }
    }

    function SetSTRadio(RowInfo) {
        if (RowInfo.STID == "") {
            ($find("<%# AdminDetailPanel.FindControl("ServicePlanDetail").FindControl("RadioStorageGroup").ClientID %>")).click();
        }
        else {
            ($find("<%# AdminDetailPanel.FindControl("ServicePlanDetail").FindControl("RadioStorage").ClientID %>")).click();
        }
    }

    function SetCombo(RowInfo) {
        try
        {
            ($find("<%# AdminDetailPanel.FindControl("ServicePlanDetail").FindControl("ComboNIC").ClientID %>")).findItemByText(RowInfo.NICName).select();
            ($find("<%# AdminDetailPanel.FindControl("ServicePlanDetail").FindControl("ComboIPPool").ClientID %>")).findItemByText(RowInfo.IPID).select();
            ($find("<%# AdminDetailPanel.FindControl("ServicePlanDetail").FindControl("ComboTemplate").ClientID %>")).findItemByText(RowInfo.VTID).select();
            ($find("<%# AdminDetailPanel.FindControl("ServicePlanDetail").FindControl("ComboCollection").ClientID %>")).findItemByText(RowInfo.CollectionName).select();
        }
        catch (e) {
        }
    }

    function SetSlider(RowInfo) {
        ($find("<%# AdminDetailPanel.FindControl("ServicePlanDetail").FindControl("CPUSlider").ClientID %>")).set_selectionEnd(RowInfo.CPUCore);
        ($find("<%# AdminDetailPanel.FindControl("ServicePlanDetail").FindControl("CPUSlider").ClientID %>")).set_value(RowInfo.CPUCore);

        ($find("<%# AdminDetailPanel.FindControl("ServicePlanDetail").FindControl("MemorySlider").ClientID %>")).set_selectionEnd(RowInfo.Memory);
        ($find("<%# AdminDetailPanel.FindControl("ServicePlanDetail").FindControl("MemorySlider").ClientID %>")).set_value(RowInfo.Memory);
    }




        function getValues(radGrid, item) {
            var newData = RowInfo.create();
            newData.SPID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "SPID").innerHTML);
            newData.Name = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Name").innerHTML);
            newData.HSID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "HSID").innerHTML);
            newData.HostGroupName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "HostGroupName").innerHTML);
            newData.STID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "STID").innerHTML);
            newData.StorageGroupName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "StorageGroupName").innerHTML);
            newData.VTID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "ShowTemplateName").innerHTML);
            newData.IPID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "ShowIPPoolName").innerHTML);
            newData.CLID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CLID").innerHTML);
            newData.CollectionName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CollectionName").innerHTML);
            newData.CPUCore = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CPUCore").innerHTML);
            newData.Memory = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Memory").innerHTML);
            newData.NICName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "NICName").innerHTML);
            newData.CreateDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CreateDate").innerHTML);
            newData.ModifyDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "ModifyDate").innerHTML);

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
       <telerik:RadAjaxManager runat="server" EnableAJAX="true" ID="RadAjaxManager1">
	    <AjaxSettings>	    
    		  <telerik:AjaxSetting AjaxControlID="ViewChooser">
			    <UpdatedControls>
				    <telerik:AjaxUpdatedControl ControlID="ViewChooser" UpdatePanelHeight="100%"  />
			    </UpdatedControls>
		     </telerik:AjaxSetting>	
          </AjaxSettings>
      </telerik:RadAjaxManager>

    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Skin="Metro" />

    <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">서비스플랜</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>

   <div style="width:100%; height:380px">
        <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false" Height="100%"/>
            <div id="demo" class="demo-container no-bg" style="Height:100%">
            <telerik:RadGrid ID="ServicePlanGrid" runat="server" Width ="100%" Height="100%" Skin="Silk" OnNeedDataSource="ServicePlanGrid_NeedDataSource"
            EnableViewState="False" SelectedItemStyle-BorderStyle="Solid"  OnDeleteCommand="ServicePlanGrid_DeleteCommand" OnItemCommand="ServicePlanGrid_ItemCommand">
            <ClientSettings EnableRowHoverStyle="true">
                <Scrolling UseStaticHeaders="True" AllowScroll="true"/>
                <Selecting AllowRowSelect="true" EnableDragToSelectRows="False" UseClientSelectColumnOnly="false" CellSelectionMode="None" />
                <ClientEvents OnRowSelected="rowSelected" ></ClientEvents>
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" Name="AdminTable" CommandItemDisplay="None" HorizontalAlign="Center"
                 AlternatingItemStyle-BorderStyle="Solid" TableLayout="Fixed" >
                
                <Columns>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="SPID"  DataField ="SPID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="SPID" UniqueName="SPID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="이름"  DataField ="Name" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="Name" UniqueName="Name" HeaderStyle-Width="150"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="HSID"  DataField ="HSID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="HSID" UniqueName="HSID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="호스트"  DataField ="ShowHostName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="HostName" UniqueName="HostName" HeaderStyle-Width="130"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="호스트그룹"  DataField ="ShowHostGroupName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowHostGroupName" UniqueName="HostGroupName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="STID"  DataField ="STID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="STID" UniqueName="STID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="스토리지"  DataField ="ShowStorageName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowStorageName" UniqueName="StorageName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="스토리지그룹"  DataField ="ShowStorageGroupName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowStorageGroupName" UniqueName="StorageGroupName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="VTID"  DataField ="VTID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="VTID" UniqueName="VTID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="템플릿"  DataField ="ShowTemplateName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowTemplateName" UniqueName="ShowTemplateName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="IPID"  DataField ="IPID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="IPID" UniqueName="IPID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="IPPool"  DataField ="ShowIPPoolName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowIPPoolName" UniqueName="ShowIPPoolName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="CLID"  DataField ="CLID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="CLID" UniqueName="CLID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="컬렉션"  DataField ="CollectionName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="CollectionName" UniqueName="CollectionName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="CPU"  DataField ="CPUCore" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="CPUCore" UniqueName="CPUCore" HeaderStyle-Width="50"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="메모리"  DataField ="Memory" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="Memory" UniqueName="Memory" HeaderStyle-Width="70"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="NIC"  DataField ="NICName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="NICName" UniqueName="NICName" HeaderStyle-Width="70"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="CreateDate"  DataField ="CreateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="CreateDate" UniqueName="CreateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="ModifyDate"  DataField ="ModifyDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ModifyDate" UniqueName="ModifyDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn>  
                    <telerik:GridButtonColumn ConfirmText="해당 서비스플랜을 삭제하시겠습니까?" ConfirmDialogType="RadWindow" HeaderTooltip="Delete" UniqueName="DeleteAdmin"
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
                      <telerik:RadTab Text="서비스플랜 상세/수정" Value="AdminDetail.ascx" ImageUrl="/Images/s.png" Selected="True" />
                      <telerik:RadTab Text="서비스플랜 추가" Value="AdminDetail.ascx" ImageUrl="/Images/s.png" Selected="False" />
                   </Tabs>
         </telerik:RadTabStrip>
    </div>
    <div class="content">
        <div class="panelShowCss"; id="HostDetailPanelDiv">
            <asp:Panel runat="server" ID="AdminDetailPanel" Visible="true"> 
                <ServicePlanDetail:ServicePlanDetail ID="ServicePlanDetail" runat="server" Visible="true" />
            </asp:Panel>
        </div>
        <div class="panelCss" id="AddHostPanelDiv">
            <AddServicePlan:AddServicePlan ID="AddServicePlan" runat="server" Visible="true"  />
        </div>
    </div>





</asp:Content>