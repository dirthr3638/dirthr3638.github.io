<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_VM_VMRequestCategory, App_Web_vmrequestcategory.aspx.55099659" %>
<%@ Register Src="~/View/Page/VM/UserControl/ReqVMDetail.ascx" TagPrefix="ReqVMDetail" TagName="ReqVMDetail" %>

<asp:Content ID="VMREQCategory_PAGE"  runat="Server" ContentPlaceHolderID="Rightcontent">


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
            Index : null,
            VMName : null,
            UPN : null,
            RequestMember : null,
            SPID : null,
            State : null,
            StateDetail : null,
            CreateDate : null,
            UpdateDate: null,

            create: function () {
                var obj = new Object();

                obj.Index = "";
                obj.VMName = "";
                obj.UPN = "";
                obj.RequestMember = "";
                obj.SPID = "";
                obj.State = "";
                obj.StateDetail = "";
                obj.CreateDate = "";
                obj.UpdateDate = "";
                return obj;
            }
        };

    function rowSelected(sender, args) {
        var row = getValues(sender, args.get_gridDataItem());
        SetValue(row);
    }

    function SetValue(RowInfo) {
        ($find("<%# AdminDetailPanel.FindControl("ReqVMDetail").FindControl("TextIndex").ClientID %>")).set_value(RowInfo.Index);
        ($find("<%# AdminDetailPanel.FindControl("ReqVMDetail").FindControl("TextVMName").ClientID %>")).set_value(RowInfo.VMName);
        ($find("<%# AdminDetailPanel.FindControl("ReqVMDetail").FindControl("TextUPN").ClientID %>")).set_value(RowInfo.UPN);
        ($find("<%# AdminDetailPanel.FindControl("ReqVMDetail").FindControl("TextRequestMember").ClientID %>")).set_value(RowInfo.RequestMember);
        ($find("<%# AdminDetailPanel.FindControl("ReqVMDetail").FindControl("TextSP").ClientID %>")).set_value(RowInfo.SPID);

        ($find("<%# AdminDetailPanel.FindControl("ReqVMDetail").FindControl("TextStatusDetail").ClientID %>")).set_value(RowInfo.StateDetail);
        ($find("<%# AdminDetailPanel.FindControl("ReqVMDetail").FindControl("TextCreateDate").ClientID %>")).set_value(RowInfo.CreateDate);
        ($find("<%# AdminDetailPanel.FindControl("ReqVMDetail").FindControl("TextUpdateDate").ClientID %>")).set_value(RowInfo.UpdateDate);
    }

    function getValues(radGrid, item) {
        var newData = RowInfo.create();
        newData.Index = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Index").innerHTML);
        newData.VMName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "VMName").innerHTML);
        newData.UPN = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "UPN").innerHTML);
        newData.RequestMember = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "RequestMember").innerHTML);
        newData.SPID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "SPID").innerHTML);
        newData.State = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "State").innerHTML);
        newData.StateDetail = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "StateDetail").innerHTML);
        newData.CreateDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CreateDate").innerHTML);
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
        <p class="main-title" style="font-weight:600">VM 신청목록</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>

         <div style="width:100%; height:530px">
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
                     AlternatingItemStyle-BorderStyle="Solid" TableLayout="Fixed" >
                
                    <Columns>
                        <telerik:GridBoundColumn DataType="System.String" HeaderText="Index"  DataField ="ShowIndex" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                            SortExpression="ShowIndex" UniqueName="Index" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                        </telerik:GridBoundColumn> 
                        <telerik:GridBoundColumn DataType="System.String" HeaderText="VM명"  DataField ="ShowVMName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                            SortExpression="ShowVMName" UniqueName="VMName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center"  Display="true">
                        </telerik:GridBoundColumn> 
                        <telerik:GridBoundColumn DataType="System.String" HeaderText="IP"  DataField ="ShowIP" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                            SortExpression="ShowIP" UniqueName="IP" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                        </telerik:GridBoundColumn> 
                        <telerik:GridBoundColumn DataType="System.String" HeaderText="요청자"  DataField ="ShowRequestMember" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                            SortExpression="ShowRequestMember" UniqueName="RequestMember" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                        </telerik:GridBoundColumn> 
                         <telerik:GridBoundColumn DataType="System.String" HeaderText="UPN"  DataField ="ShowUPN" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                            SortExpression="ShowUPN" UniqueName="UPN" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                        </telerik:GridBoundColumn> 
                        <telerik:GridBoundColumn DataType="System.String" HeaderText="서비스플랜"  DataField ="ShowSPID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                            SortExpression="ShowSPID" UniqueName="SPID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true" >
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataType="System.String" HeaderText="상태"  DataField ="ShowState" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                            SortExpression="ShowState" UniqueName="State" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                        </telerik:GridBoundColumn> 
                        <telerik:GridBoundColumn DataType="System.String" HeaderText="상태정보"  DataField ="ShowStateDetail" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                            SortExpression="ShowStateDetail" UniqueName="StateDetail" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false" >
                        </telerik:GridBoundColumn> 
                        <telerik:GridBoundColumn DataType="System.String" HeaderText="생성일짜"  DataField ="ShowCreateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                            SortExpression="ShowCreateDate" UniqueName="CreateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                        </telerik:GridBoundColumn> 
                        <telerik:GridBoundColumn DataType="System.String" HeaderText="업데이트일짜"  DataField ="ShowUpdateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                            SortExpression="ShowUpdateDate" UniqueName="UpdateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
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