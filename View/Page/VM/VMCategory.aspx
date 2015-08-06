<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_VM_VMCategory, App_Web_vmcategory.aspx.55099659" %>
<%@ Register Src="~/View/Page/VM/UserControl/AddVM.ascx" TagPrefix="AddVM" TagName="AddVM" %>
<%@ Register Src="~/View/Page/VM/UserControl/VMDetail.ascx" TagPrefix="VMDetail" TagName="VMDetail" %>


<asp:Content ID="VMCATEGORY_PAGE"  runat="Server" ContentPlaceHolderID="Rightcontent">
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
            Name : null,
            IP : null,
            HSID : null,
            HostName : null,
            StoragePath : null,
            UPN : null,
            CLID : null,
            CollectionName : null,
            BaseVMTemplateVTID : null,
            BaseVMTemplateName : null,
            OS : null,
            State : null,
            StateDetail : null,
            VMState : null,
            VMStateDetail : null,
            VMUptime : null,
            VMStateUpdateTime : null,
            CreateDate : null,
            ModifyDate : null,
            UpdateDate: null,

            create: function () {
                var obj = new Object();

                obj.Name = "";
                obj.IP  = "";
                obj.HSID  = "";
                obj.HostName  = "";
                obj.StoragePath  = "";
                obj.UPN  = "";
                obj.CLID  = "";
                obj.CollectionName  = "";
                obj.BaseVMTemplateVTID  = "";
                obj.BaseVMTemplateName  = "";
                obj.OS  = "";
                obj.State  = "";
                obj.StateDetail  = "";
                obj.VMState  = "";
                obj.VMStateDetail  = "";
                obj.VMUptime  = "";
                obj.VMStateUpdateTime  = "";
                obj.CreateDate  = "";
                obj.ModifyDate  = "";
                obj.UpdateDate = "";
                return obj;
            }
        };

    function rowSelected(sender, args) {
        var con1 = document.getElementById("AdminDetailPanelDiv");
        var con2 = document.getElementById("AddAdminPanelDiv");

        if ($find("<%# ViewChooser.ClientID %>").get_selectedIndex() != 0) {
            $find("<%# ViewChooser.ClientID %>").set_selectedIndex(0);
            con1.style.display = "block";
            con2.style.display = "none";
        }

        var row = getValues(sender, args.get_gridDataItem());
        SetValueVM(row);
    }

    function SetValueVM(RowInfo) {
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextVMName").ClientID %>")).set_value(RowInfo.Name);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextIP").ClientID %>")).set_value(RowInfo.IP);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextHostName").ClientID %>")).set_value(RowInfo.HostName);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextUPN").ClientID %>")).set_value(RowInfo.UPN);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextCollectionName").ClientID %>")).set_value(RowInfo.CollectionName);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextTemplateName").ClientID %>")).set_value(RowInfo.BaseVMTemplateName);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextOS").ClientID %>")).set_value(RowInfo.OS);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextStatusDetail").ClientID %>")).set_value(RowInfo.StateDetail);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TexVMStatusDetail").ClientID %>")).set_value(RowInfo.VMStateDetail);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextCreateDate").ClientID %>")).set_value(RowInfo.CreateDate);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextModifyDate").ClientID %>")).set_value(RowInfo.ModifyDate);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextUpdateDate").ClientID %>")).set_value(RowInfo.UpdateDate);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextVMUpdateDate").ClientID %>")).set_value(RowInfo.VMUptime);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextVMModifyDate").ClientID %>")).set_value(RowInfo.VMStateUpdateTime);
        ($find("<%# AdminDetailPanel.FindControl("VMDetail").FindControl("TextStoragePath").ClientID %>")).set_value(RowInfo.StoragePath);
    }

    function getValues(radGrid, item) {
        var newData = RowInfo.create();
        newData.Name = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Name").innerHTML);
        newData.IP = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "IP").innerHTML);
        newData.HSID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "HSID").innerHTML);
        newData.HostName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "HostName").innerHTML);
        newData.StoragePath = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "StoragePath").innerHTML);
        newData.UPN = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "UPN").innerHTML);
        newData.CLID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CLID").innerHTML);
        newData.CollectionName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CollectionName").innerHTML);
        newData.BaseVMTemplateVTID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "BaseVMTemplateVTID").innerHTML);
        newData.BaseVMTemplateName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "BaseVMTemplateName").innerHTML);
        newData.OS = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "OS").innerHTML);
        newData.State = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "State").innerHTML);
        newData.StateDetail = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "StateDetail").innerHTML);
        newData.VMState = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "VMState").innerHTML);
        newData.VMStateDetail = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "VMStateDetail").innerHTML);
        newData.VMUptime = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "VMUptime").innerHTML);
        newData.VMStateUpdateTime = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "VMStateUpdateTime").innerHTML);
        newData.CreateDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CreateDate").innerHTML);
        newData.ModifyDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "ModifyDate").innerHTML);
        newData.UpdateDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "UpdateDate").innerHTML);

        return newData;
    }


    function tabSelected(sender, args) {
        if (sender.get_selectedIndex() == 0) {
            var con1 = document.getElementById("AdminDetailPanelDiv");
            con1.style.display = "block";
            var con2 = document.getElementById("AddAdminPanelDiv");
            con2.style.display = "none";
        }
        else if (sender.get_selectedIndex() == 1) {
            var con1 = document.getElementById("AdminDetailPanelDiv");
            con1.style.display = "none";
            var con2 = document.getElementById("AddAdminPanelDiv");
            con2.style.display = "block";
        }
    }
</script>
<telerik:RadAjaxManager runat="server" EnableAJAX="true" ID="RadAjaxManager1">
    <AjaxSettings>	    
            <telerik:AjaxSetting AjaxControlID="ViewChooser">
			    <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="ViewChooser" />
                    <telerik:AjaxUpdatedControl ControlID="Content" LoadingPanelID="RadAjaxLoadingPanel1" />
			    </UpdatedControls>
		    </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="AdminUserGrid">
			    <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="AdminUserGrid" />
			    </UpdatedControls>
		    </telerik:AjaxSetting>
    </AjaxSettings>
</telerik:RadAjaxManager>
<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" skin="Metro" />

    <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">VM 목록</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>

     <div style="width:100%; height:550px">
        <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false" Height="100%"/>
            <div id="demo" class="demo-container no-bg" style="Height:100%">
            <telerik:RadGrid ID="VMCategoryGrid" runat="server" Width ="100%" Height="100%" Skin="Silk" OnNeedDataSource="VMCategoryGrid_NeedDataSource"
            EnableViewState="False" SelectedItemStyle-BorderStyle="Solid"  OnDeleteCommand="VMCategoryGrid_DeleteCommand" OnItemCommand="VMCategoryGrid_ItemCommand">
            <ClientSettings EnableRowHoverStyle="true">
                <Scrolling UseStaticHeaders="True" AllowScroll="true"/>
                <Selecting AllowRowSelect="true" EnableDragToSelectRows="False" UseClientSelectColumnOnly="false" CellSelectionMode="None" />
                <ClientEvents OnRowSelected="rowSelected" ></ClientEvents>
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" Name="AdminTable" CommandItemDisplay="None" HorizontalAlign="Center"
                 AlternatingItemStyle-BorderStyle="Solid" TableLayout="Fixed"  DataKeyNames="ShowName">
                
                <Columns>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="이름"  DataField ="ShowName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowName" UniqueName="Name" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="IP"  DataField ="ShowIP" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowIP" UniqueName="IP" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="호스트ID"  DataField ="ShowHSID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowHSID" UniqueName="HSID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center"  Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="호스트명"  DataField ="ShowHostName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowHostName" UniqueName="HostName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="Storage경로"  DataField ="ShowStoragePath" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowStoragePath" UniqueName="StoragePath" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                     <telerik:GridBoundColumn DataType="System.String" HeaderText="UPN"  DataField ="ShowUPN" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowUPN" UniqueName="UPN" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="컬렉션ID"  DataField ="ShowCLID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowCLID" UniqueName="CLID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="컬렉션명"  DataField ="ShowCollectionName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowCollectionName" UniqueName="CollectionName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="템플릿ID"  DataField ="ShowBaseVMTemplateVTID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowBaseVMTemplateVTID" UniqueName="BaseVMTemplateVTID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="템플릿명"  DataField ="ShowBaseVMTemplateName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowBaseVMTemplateName" UniqueName="BaseVMTemplateName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="운영체제"  DataField ="ShowOS" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowOS" UniqueName="OS" HeaderStyle-Width="170"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="상태"  DataField ="ShowState" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowState" UniqueName="State" HeaderStyle-Width="70"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="상태설명"  DataField ="ShowStateDetail" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowStateDetail" UniqueName="StateDetail" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="VM상태"  DataField ="ShowVMState" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowVMState" UniqueName="VMState" HeaderStyle-Width="70"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="VM상태설명"  DataField ="ShowVMStateDetail" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowVMStateDetail" UniqueName="VMStateDetail" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="VM업데이트날짜"  DataField ="ShowVMUptime" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowVMUptime" UniqueName="VMUptime" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="VM상태업데이트날짜"  DataField ="ShowVMStateUpdateTime" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowVMStateUpdateTime" UniqueName="VMStateUpdateTime" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="생성날짜"  DataField ="ShowCreateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowCreateDate" UniqueName="CreateDate" HeaderStyle-Width="170"  ItemStyle-HorizontalAlign="Center" Display="false" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="수정날짜"  DataField ="ShowModifyDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowModifyDate" UniqueName="ModifyDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="업데이트날짜"  DataField ="ShowUpdateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowUpdateDate" UniqueName="UpdateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridButtonColumn ConfirmText="해당 VM을 삭제하시겠습니까?" ConfirmDialogType="RadWindow" HeaderTooltip="Delete" UniqueName="DeleteAdmin"
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
                      <telerik:RadTab Text="VM상세보기" Value="AdminDetail.ascx" ImageUrl="/Images/s.png" Selected="True" />
                      <telerik:RadTab Text="VM추가" Value="AddAdmin.ascx" ImageUrl="/Images/s.png"  />
                   </Tabs>
         </telerik:RadTabStrip>
    </div>
<div class="content">
        <div class="panelShowCss"; id="AdminDetailPanelDiv">
            <asp:Panel runat="server" ID="AdminDetailPanel" Visible="true"> 
                <VMDetail:VMDetail ID="VMDetail" runat="server" Visible="true"/>
            </asp:Panel>
        </div>
        <div class="panelCss" id="AddAdminPanelDiv">
            <AddVM:AddVM ID="AddVM" runat="server" Visible="true"  />
        </div>
    </div>
</asp:Content>