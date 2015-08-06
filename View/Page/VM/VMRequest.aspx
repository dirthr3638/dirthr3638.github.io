<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_VM_VMRequest, App_Web_vmrequest.aspx.55099659" %>

<%@ Register Src="~/View/Page/VM/UserControl/ReqVMDetail.ascx" TagPrefix="ReqVMDetail" TagName="ReqVMDetail" %>

<asp:Content ID="VMREQUEST_PAGE"  runat="Server" ContentPlaceHolderID="Rightcontent">

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
            FirstName: null,
            LastName: null,
            Phone: null,

            create: function () {
                var obj = new Object();

                obj.ID = "";
                obj.Name = "";
                obj.FirstName = "";
                obj.LastName = "";
                obj.Phone = "";
                return obj;
            }
        };

    function rowSelected(sender, args) {
        if ($find("<%# ViewChooser.ClientID %>").get_selectedIndex() != 0) {
            $find("<%# ViewChooser.ClientID %>").set_selectedIndex(0);
            con1.style.display = "block";
            con2.style.display = "none";
        }
        var con1 = document.getElementById("AdminDetailPanelDiv");
        var con2 = document.getElementById("AddAdminPanelDiv");


    }

    function SetValueAdmin(RowInfo) {

    }

    function getValues(radGrid, item) {
    }


    function tabSelected(sender, args) {

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
        <p class="main-title" style="font-weight:600">VM 신청</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>

     <div style="width:100%; height:580px">
        <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false" Height="100%"/>
            <div id="demo" class="demo-container no-bg" style="Height:100%">
            <telerik:RadGrid ID="RequistVMGrid" runat="server" Width ="100%" Height="100%" Skin="Silk" OnNeedDataSource="RequistVMGrid_NeedDataSource"
            EnableViewState="False" SelectedItemStyle-BorderStyle="Solid"  OnDeleteCommand="RequistVMGrid_DeleteCommand" OnItemCommand="RequistVMGrid_ItemCommand">
            <ClientSettings EnableRowHoverStyle="true">
                <Scrolling UseStaticHeaders="True" AllowScroll="true"/>
                <Selecting AllowRowSelect="true" EnableDragToSelectRows="False" UseClientSelectColumnOnly="false" CellSelectionMode="None" />
                <ClientEvents OnRowSelected="rowSelected" ></ClientEvents>
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" Name="AdminTable" CommandItemDisplay="None" HorizontalAlign="Center"
                 AlternatingItemStyle-BorderStyle="Solid" TableLayout="Fixed"  DataKeyNames="ShowName">
                
                <Columns>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="이름"  DataField ="ShowName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowName" UniqueName="Name" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="IP"  DataField ="ShowIP" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowIP" UniqueName="IP" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="호스트ID"  DataField ="ShowHSID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowHSID" UniqueName="HSID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center"  Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="호스트명"  DataField ="ShowHostName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowHostName" UniqueName="HostName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
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
                        SortExpression="ShowOS" UniqueName="OS" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="상태"  DataField ="ShowState" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowState" UniqueName="State" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="상태설명"  DataField ="ShowStateDetail" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowStateDetail" UniqueName="StateDetail" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="VM상태"  DataField ="ShowVMState" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowVMState" UniqueName="VMState" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
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
                        SortExpression="ShowCreateDate" UniqueName="CreateDate" HeaderStyle-Width="170"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="수정날짜"  DataField ="ShowModifyDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowModifyDate" UniqueName="ModifyDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="업데이트날짜"  DataField ="ShowUpdateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowUpdateDate" UniqueName="UpdateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn>
                    </Columns>
             </MasterTableView>
            </telerik:RadGrid>
          </div>
    </div>
    <div style="background-color:#afb3b7; border-radius:3px; background-image:-webkit-linear-gradient(top,#ced2d6 0,#afb3b7 100%)">
        <telerik:RadTabStrip ID="ViewChooser" Skin="Silk" Style="margin-top: 0px;"   EnableViewState="false" 
                SelectedIndex="0" runat="server" OnClientTabSelected="tabSelected">
                   <Tabs >
                      <telerik:RadTab Text="VM요청상세" Value="AdminDetail.ascx" ImageUrl="/Images/s.png" Selected="True" />
                   </Tabs>
         </telerik:RadTabStrip>
    </div>
<div class="content">
        <div class="panelShowCss"; id="AdminDetailPanelDiv">
            <asp:Panel runat="server" ID="AdminDetailPanel" Visible="true"> 
               <ReqVMDetail:ReqVMDetail ID="ReqVMDetail" runat="server" Visible="true"/>
            </asp:Panel>
        </div>
    </div>

    </asp:Content>