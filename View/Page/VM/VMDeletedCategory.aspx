<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_VM_VMDeletedCategory, App_Web_vmdeletedcategory.aspx.55099659" %>

<asp:Content ID="VMDELETECATEGORY_PAGE"  runat="Server" ContentPlaceHolderID="Rightcontent">



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
        <p class="main-title" style="font-weight:600">VM 삭제목록</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>

     <div style="width:100%; height:780px">
        <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false" Height="100%"/>
            <div id="demo" class="demo-container no-bg" style="Height:100%">
            <telerik:RadGrid ID="DeletedVMGrid" runat="server" Width ="100%" Height="100%" Skin="Silk" OnNeedDataSource="DeletedVMGrid_NeedDataSource"
            EnableViewState="False" SelectedItemStyle-BorderStyle="Solid"  OnDeleteCommand="DeletedVMGrid_DeleteCommand" OnItemCommand="DeletedVMGrid_ItemCommand">
            <ClientSettings EnableRowHoverStyle="true">
                <Scrolling UseStaticHeaders="True" AllowScroll="true"/>
                <Selecting AllowRowSelect="true" EnableDragToSelectRows="False" UseClientSelectColumnOnly="false" CellSelectionMode="None" />
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" Name="AdminTable" CommandItemDisplay="None" HorizontalAlign="Center"
                 AlternatingItemStyle-BorderStyle="Solid" TableLayout="Fixed" >
                <Columns>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="인덱스"  DataField ="ShowIndex" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowIndex" UniqueName="Index" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="VM명"  DataField ="ShowVMName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowVMName" UniqueName="VMName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="UPN"  DataField ="ShowUPN" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowUPN" UniqueName="UPN" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="요청자"  DataField ="ShowRequestMember" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowRequestMember" UniqueName="RequestMember" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center"  Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="상태"  DataField ="ShowState" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowState" UniqueName="State" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="상태상세"  DataField ="StateDetail" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowStateDetail" UniqueName="StateDetail" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                     <telerik:GridBoundColumn DataType="System.String" HeaderText="생성날짜"  DataField ="ShowCreateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowCreateDate" UniqueName="CreateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="업데이트날짜"  DataField ="ShowUpdateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowUpdateDate" UniqueName="UpdateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true" >
                    </telerik:GridBoundColumn>
                    <telerik:GridButtonColumn ConfirmText="해당 VM을 복구하시겠습니까?" ConfirmDialogType="RadWindow" HeaderTooltip="복구" UniqueName="RestoreVM" ConfirmTitle="VM복구" 
                        HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium" ButtonType="ImageButton" CommandName="Restore" HeaderText="복구" HeaderStyle-Width="30" ImageUrl="../../../Images/Restore.png" />
                    <telerik:GridButtonColumn ConfirmText="해당 VM이 완전히 삭제됩니다. 삭제하시겠습니까?" ConfirmDialogType="RadWindow" HeaderTooltip="삭제" UniqueName="DeleteAdmin"
                        ConfirmTitle="Delete" ButtonType="ImageButton" CommandName="Delete" HeaderStyle-Width="15" />
                 </Columns>
             </MasterTableView>
            </telerik:RadGrid>
          </div>
    </div>
<%--    <div style="background-color:#afb3b7; border-radius:3px; background-image:-webkit-linear-gradient(top,#ced2d6 0,#afb3b7 100%)">
        <telerik:RadTabStrip ID="ViewChooser" Skin="Silk" Style="margin-top: 0px;"   EnableViewState="false" 
                SelectedIndex="0" runat="server" OnClientTabSelected="tabSelected">
                   <Tabs >
                      <telerik:RadTab Text="VM상세/수정" Value="AdminDetail.ascx" ImageUrl="/Images/s.png" Selected="True" />
                      <telerik:RadTab Text="VM추가" Value="AddAdmin.ascx" ImageUrl="/Images/s.png"  />
                   </Tabs>
         </telerik:RadTabStrip>
    </div>--%>
<%--<div class="content">
        <div class="panelShowCss"; id="AdminDetailPanelDiv">
            <asp:Panel runat="server" ID="AdminDetailPanel" Visible="true"> 
                <VMDetail:VMDetail ID="VMDetail" runat="server" Visible="true"/>
            </asp:Panel>
        </div>
        <div class="panelCss" id="AddAdminPanelDiv">
            <AddVM:AddVM ID="AddVM" runat="server" Visible="true"  />
        </div>
    </div>--%>

</asp:Content>