<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_User_AdminManage, App_Web_adminmanage.aspx.a39b0c22" %>
<%@ Register Src="~/View/Page/User/UserControl/AddAdmin.ascx" TagPrefix="AddAdmin" TagName="AddAdmin" %>
<%@ Register Src="~/View/Page/User/UserControl/AdminDetail.ascx" TagPrefix="AdminDetail" TagName="AdminDetail" %>


<asp:Content ID="ADMINMANAGE_PAGE"  runat="Server" ContentPlaceHolderID="Rightcontent">
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

        var row = getValues(sender, args.get_gridDataItem());
        SetValueAdmin(row);

    }

    function SetValueAdmin(RowInfo) {
        ($find("<%# AdminDetailPanel.FindControl("AdminDetail").FindControl("TextAdminID").ClientID %>")).set_value(RowInfo.ID);
        ($find("<%# AdminDetailPanel.FindControl("AdminDetail").FindControl("TextDisplayName").ClientID %>")).set_value(RowInfo.Name);
        ($find("<%# AdminDetailPanel.FindControl("AdminDetail").FindControl("TextFirsName").ClientID %>")).set_value(RowInfo.FirstName);
        ($find("<%# AdminDetailPanel.FindControl("AdminDetail").FindControl("TextLastName").ClientID %>")).set_value(RowInfo.LastName);
        ($find("<%# AdminDetailPanel.FindControl("AdminDetail").FindControl("TextPhone").ClientID %>")).set_value(RowInfo.Phone);

    }

    function getValues(radGrid, item) {
        var newData = RowInfo.create();
        newData.ID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "AdminID").innerHTML);
        newData.Name = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "AdminName").innerHTML);
        newData.FirstName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "FirstName").innerHTML);
        newData.LastName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "LastName").innerHTML);
        newData.Phone = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Phone").innerHTML);

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
<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" skin="Metro"/>

    <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">관리자 관리</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>

     <div style="width:100%; height:580px">
        <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false" Height="100%"/>
            <div id="demo" class="demo-container no-bg" style="Height:100%">
            <telerik:RadGrid ID="AdminUserGrid" runat="server" Width ="100%" Height="100%" Skin="Silk" OnNeedDataSource="AdminUserGrid_NeedDataSource"
            EnableViewState="False" SelectedItemStyle-BorderStyle="Solid"  OnDeleteCommand="AdminUserGrid_DeleteCommand" OnItemCommand="AdminUserGrid_ItemCommand">
            <ClientSettings EnableRowHoverStyle="true">
                <Scrolling UseStaticHeaders="True" AllowScroll="true"/>
                <Selecting AllowRowSelect="true" EnableDragToSelectRows="False" UseClientSelectColumnOnly="false" CellSelectionMode="None" />
                <ClientEvents OnRowSelected="rowSelected" ></ClientEvents>
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" Name="AdminTable" CommandItemDisplay="None" HorizontalAlign="Center"
                 AlternatingItemStyle-BorderStyle="Solid" TableLayout="Fixed" ClientDataKeyNames="ShowPolicyName" DataKeyNames="ShowPolicyID">
                
                <Columns>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="성"  DataField ="FirstName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowFirstName" UniqueName="FirstName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="이름"  DataField ="LastName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowLastName" UniqueName="LastName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 

                    <telerik:GridBoundColumn DataType="System.String" HeaderText="관리자아이디"  DataField ="ShowUpn" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowPolicyName" UniqueName="AdminID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="관리자명"  DataField ="ShowUserName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowPolicyName" UniqueName="AdminName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="연락처"  DataField ="ShowPhone" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowPolicyName" UniqueName="Phone" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
   
                    <telerik:GridButtonColumn ConfirmText="해당 관리자를 삭제하시겠습니까?" ConfirmDialogType="RadWindow" HeaderTooltip="Delete" UniqueName="DeleteAdmin"
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
                      <telerik:RadTab Text="관리자상세/수정" Value="AdminDetail.ascx" ImageUrl="/Images/s.png" Selected="True" />
                      <telerik:RadTab Text="관리자추가" Value="AddAdmin.ascx" ImageUrl="/Images/s.png"  />
                   </Tabs>
         </telerik:RadTabStrip>
    </div>
    <div class="content">
        <div class="panelShowCss"; id="AdminDetailPanelDiv">
            <asp:Panel runat="server" ID="AdminDetailPanel" Visible="true"> 
                <AdminDetail:AdminDetail ID="AdminDetail" runat="server" Visible="true"/>
            </asp:Panel>
        </div>
        <div class="panelCss" id="AddAdminPanelDiv">
            <AddAdmin:AddAdmin ID="AddAdmin" runat="server" Visible="true"  />
        </div>
    </div>

</asp:Content>


