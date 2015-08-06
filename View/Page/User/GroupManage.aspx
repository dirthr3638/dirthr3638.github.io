<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_User_GroupManage, App_Web_groupmanage.aspx.a39b0c22" %>

<%@ Register Src="~/View/Page/User/UserControl/UserDetail.ascx" TagPrefix="UserDetails" TagName="UserDetails" %>
<%@ Register Src="~/View/Page/User/UserControl/GroupUserDetail.ascx" TagPrefix="GroupDetails" TagName="GroupDetails" %>
<%@ Register Src="~/View/Page/User/UserControl/AddGroup.ascx" TagPrefix="AddGroup" TagName="AddGroup" %>
<%@ Register Src="~/View/Page/User/UserControl/AddUser.ascx" TagPrefix="AddUser" TagName="AddUser" %>


<asp:Content ID="GROUPMANAGE_PAGE"  runat="Server" ContentPlaceHolderID="Rightcontent">
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

        var currentRow;

        var RowInfo =
            {
                ID: null,
                Name: null,
                Upn: null,
                VMCount :null,
                PolicyName: null,
                GroupName: null,
                FirstName: null,
                LastName: null,
                Phone:null,

                create: function () {
                    var obj = new Object();

                    obj.ID = "";
                    obj.Name = "";
                    obj.FirstName = "";
                    obj.LastName = "";
                    obj.Upn = "";
                    obj.VMCount = "";
                    obj.PolicyName = "";
                    obj.GroupName = "";
                    obj.Phone = "";
                    return obj;
                }
            };

        function pageLoad(sender, args) {
            var a = args.get_isPartialLoad()
            if (!a) {
                var tree = $find("<%# GroupTreeView.ClientID %>");
                var node = tree.findNodeByText("조직도");
                if (node) {
                    node.select();
                }
            }
        }
 
        function tabSelected(sender, args) {
            if (sender.get_selectedIndex() == 0) {
                var con1 = document.getElementById("GroupDetailPanelDiv");
                con1.style.display = "block";
                var con2 = document.getElementById("AddGroupPanelDiv");
                con2.style.display = "none";
                var con3 = document.getElementById("AddUserPanelDiv");
                con3.style.display = "none";
                var con4 = document.getElementById("UserDetailPanelDiv");
                con4.style.display = "none";
            }
            else if (sender.get_selectedIndex() == 1) {
                var con1 = document.getElementById("GroupDetailPanelDiv");
                con1.style.display = "none";
                var con2 = document.getElementById("AddGroupPanelDiv");
                con2.style.display = "block";
                var con3 = document.getElementById("AddUserPanelDiv");
                con3.style.display = "none";
                var con4 = document.getElementById("UserDetailPanelDiv");
                con4.style.display = "none";
            }
            else if (sender.get_selectedIndex() == 2) {
                var con1 = document.getElementById("GroupDetailPanelDiv");
                con1.style.display = "none";
                var con2 = document.getElementById("AddGroupPanelDiv");
                con2.style.display = "none";
                var con3 = document.getElementById("AddUserPanelDiv");
                con3.style.display = "block";
                var con4 = document.getElementById("UserDetailPanelDiv");
                con4.style.display = "none";
            }
        }

        function rowSelect() {

            var grid = $find("<%#GroupUserGrid.ClientID %>");
            var firstDataItem = grid.get_masterTableView().get_dataItems()[grid._selectedIndexes[0]];
            var keyValues = firstDataItem.getDataKeyValue("id_estadoreq");
            alert(keyValues);
        }

        function rowSelected(sender, args) {

            if ($find("<%# ViewChooser.ClientID %>").get_selectedIndex() != 0) {
                $find("<%# ViewChooser.ClientID %>").set_selectedIndex(0);
            }

            var con1 = document.getElementById("GroupDetailPanelDiv");
            var con2 = document.getElementById("AddGroupPanelDiv");
            var con3 = document.getElementById("AddUserPanelDiv");
            var con4 = document.getElementById("UserDetailPanelDiv");

            var row = getValues(sender, args.get_gridDataItem());
            
            if (CheckClickedRowGroup(sender, args.get_gridDataItem())) { //그룹선택시
                con1.style.display = "block";
                con4.style.display = "none";
                setValuesGroup(row);
            }
            else {      //사용자선택시
                con1.style.display = "none";
                con4.style.display = "block";
                SetValueUser(row);
            }
            
            con2.style.display = "none";
            con3.style.display = "none";
        }

        function CheckClickedRowGroup(radgrid, item) {
            if ((radgrid.get_masterTableView().getCellByColumnUniqueName(item, "UPN").innerHTML) == "-")
                return true;
            else
                return false;
        }
        
        function getValues(radGrid, item) {
            var newData = RowInfo.create();
            newData.ID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "ID").innerHTML);
            newData.GroupName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "GroupName").innerHTML);
            newData.PolicyName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "PolicyName").innerHTML);
            newData.Upn = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "UPN").innerHTML);
            newData.VMCount = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "VMCount").innerHTML);
            newData.Name = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Name").innerHTML);
            newData.FirstName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "FirstName").innerHTML);
            newData.LastName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "LastName").innerHTML);
            newData.Phone = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Phone").innerHTML);

            return newData;
        }

        //그룹이나 사람이냐에 따라 나누어 넣어줌
        function setValuesGroup(RowInfo){

            ($find("<%# GroupDetailPanel.FindControl("GroupDetails").FindControl("ComboParentGroup").ClientID %>")).findItemByText(RowInfo.GroupName).select();
            ($find("<%# GroupDetailPanel.FindControl("GroupDetails").FindControl("TextGroupInput").ClientID %>")).set_value(RowInfo.Name);
            ($find("<%# GroupDetailPanel.FindControl("GroupDetails").FindControl("TextGroupID").ClientID %>")).set_value(RowInfo.ID);
            ($find("<%# GroupDetailPanel.FindControl("GroupDetails").FindControl("ComboPolicy").ClientID %>")).findItemByText(RowInfo.PolicyName).select();
        }

        function SetValueUser(RowInfo) {
            ($find("<%# GroupDetailPanel.FindControl("UserDetails").FindControl("TextFirsName").ClientID %>")).set_value(RowInfo.FirstName);
            ($find("<%# GroupDetailPanel.FindControl("UserDetails").FindControl("TextUserInput").ClientID %>")).set_value(RowInfo.LastName);

            ($find("<%# GroupDetailPanel.FindControl("UserDetails").FindControl("ComboParentGroup").ClientID %>")).findItemByText(RowInfo.GroupName).select();
            ($find("<%# GroupDetailPanel.FindControl("UserDetails").FindControl("TextUserID").ClientID %>")).set_value(RowInfo.ID);
            ($find("<%# GroupDetailPanel.FindControl("UserDetails").FindControl("TextDisplayName").ClientID %>")).set_value(RowInfo.Name);
            ($find("<%# GroupDetailPanel.FindControl("UserDetails").FindControl("TextUpnInput").ClientID %>")).set_value(RowInfo.Upn);
            ($find("<%# GroupDetailPanel.FindControl("UserDetails").FindControl("ComboUserPolicy").ClientID %>")).findItemByText(RowInfo.PolicyName).select();
            ($find("<%# GroupDetailPanel.FindControl("UserDetails").FindControl("TextPhone").ClientID %>")).set_value(RowInfo.Phone);

        }

    </script>

       <telerik:RadAjaxManager runat="server" EnableAJAX="true" ID="RadAjaxManager1">
	     <AjaxSettings>	    
    		<telerik:AjaxSetting AjaxControlID="GroupTreeView">
			    <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="GroupUserGrid" LoadingPanelID="RadAjaxLoadingPanel1" />
			    </UpdatedControls>
		     </telerik:AjaxSetting>	

             <telerik:AjaxSetting AjaxControlID="ViewChooser">
			    <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="ViewChooser" />
                    <telerik:AjaxUpdatedControl ControlID="Content" LoadingPanelID="RadAjaxLoadingPanel1" />
			    </UpdatedControls>
		     </telerik:AjaxSetting>	

         </AjaxSettings>
      </telerik:RadAjaxManager>

    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" skin="Metro" />


    <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">그룹관리</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>

    <div style="width:100%; height:811px; ">
        <div style="width:17%; height:752px; float:left; background-color: #f3f3f3;  border: 1px solid #e2e4e7; ">
            <telerik:RadTreeView runat="server" ID="GroupTreeView"  RenderMode="Auto"
                OnNodeClick="GroupTreeView_NodeClick" DataFieldParentID="ShowParentID" DataFieldID="ShowGUID" DataTextField="ShowGroupName"  DataValueField="ShowGUID">
                 <DataBindings>
                    <telerik:RadTreeNodeBinding Expanded="True"></telerik:RadTreeNodeBinding>
                </DataBindings>
            </telerik:RadTreeView>
        </div>
         
        <div style="width:calc(82.8%); height:811px;  float:left">

        <div style="width:100%; height:451px">
        <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false" Height="100%"/>
            <div id="demo" class="demo-container no-bg" style="Height:100%">
            <telerik:RadGrid ID="GroupUserGrid" runat="server" Width ="100%" Height="460px" Skin="Silk" OnNeedDataSource="GroupUserGrid_NeedDataSource"   
            EnableViewState="false" SelectedItemStyle-BorderStyle="Solid" OnItemCommand="GroupUserGrid_ItemCommand" OnDeleteCommand="GroupUserGrid_DeleteCommand" OnSelectedCellChanged="GroupUserGrid_SelectedCellChanged">
            <ClientSettings EnableRowHoverStyle="true">
                <Scrolling UseStaticHeaders="True" AllowScroll="true"/>
                <Selecting AllowRowSelect="true" EnableDragToSelectRows="False" UseClientSelectColumnOnly="false" CellSelectionMode="None" />
                <ClientEvents OnRowSelected="rowSelected" ></ClientEvents>
                <Resizing AllowColumnResize="true" EnableRealTimeResize="true"/>
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" Name="PolicyTable" CommandItemDisplay="None" HorizontalAlign="Center"
                 AlternatingItemStyle-BorderStyle="Solid" TableLayout="Fixed" ClientDataKeyNames="ShowPolicyName" DataKeyNames="ShowPolicyID" >
                 
                <Columns>
                    <telerik:GridImageColumn HeaderTooltip="구분" UniqueName="DeletePolicy" HeaderStyle-Width="25" DataImageUrlFields="ShowIcon"  />

                    <telerik:GridBoundColumn DataType="System.String" HeaderText="그룹명"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="GroupName" HeaderStyle-Width="40"  ItemStyle-HorizontalAlign="Center" Display="false" DataField="ShowParentGroup">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="ID"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="ID" HeaderStyle-Width="80"  ItemStyle-HorizontalAlign="Center" Display="false" DataField="ShowID">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="이름"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="Name" HeaderStyle-Width="80"  ItemStyle-HorizontalAlign="Center" Display="true" DataField="ShowName">
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="FirstName"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="FirstName" HeaderStyle-Width="80"  ItemStyle-HorizontalAlign="Center" Display="false" DataField="ShowFirstName">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="LastName"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="LastName" HeaderStyle-Width="80"  ItemStyle-HorizontalAlign="Center" Display="false" DataField="ShowLastName">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataType="System.String" HeaderText="Phone"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="Phone" HeaderStyle-Width="80"  ItemStyle-HorizontalAlign="Center" Display="false" DataField="ShowPhone">
                    </telerik:GridBoundColumn>

                    
                     
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="Upn"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="UPN" HeaderStyle-Width="160"  ItemStyle-HorizontalAlign="Center"  DataField="ShowUpn">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="적용정책명"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="PolicyName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Visible="true" DataField="ShowPolicyName" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn  DataType="System.Int32" HeaderText="VM개수" ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"  Display="false"
                        UniqueName="VMCount" HeaderStyle-Width="65" HeaderStyle-HorizontalAlign="Center" Visible="true" DataField="ShowVMCount">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="접속권한"  DataField ="ShowPermission" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="ConnectPermission" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Visible="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn  DataType="System.String" HeaderText="클립보드 접근권한" ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"  DataField ="ShowPolicyClipBoard"
                        UniqueName="Clipboard" HeaderStyle-Width="165" HeaderStyle-HorizontalAlign="Center" Visible="true">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn  HeaderText="Drive" SortExpression="드라이브 접근권한" DataType="System.String"  DataField ="ShowPolicyDrive" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="Drive" HeaderStyle-Width="165" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" Visible="true">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataType="System.String" HeaderText="자동업데이트"  DataField ="ShowAutoUpdate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="AutoUpdate" HeaderStyle-Width="150"  ItemStyle-HorizontalAlign="Center" Visible="true">
                    </telerik:GridBoundColumn> 
                    
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="퍼포먼스"  DataField ="ShowPerformance" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="Performance" HeaderStyle-Width="200"  ItemStyle-HorizontalAlign="Center" Display="false" >
                    </telerik:GridBoundColumn> 

                    <telerik:GridBoundColumn DataType="System.String" HeaderText="Sound"  DataField ="ShowSound" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="Sound" HeaderStyle-Width="200"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 

                    <telerik:GridBoundColumn DataType="System.String" HeaderText="해상도"  DataField ="ShowResolution" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Small"
                        UniqueName="Resolution" HeaderStyle-Width="200"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridButtonColumn ConfirmText="해당 그룹/사용자를 삭제하시겠습니까?" ConfirmDialogType="RadWindow" HeaderTooltip="Delete" UniqueName="DeletePolicy"
                        ConfirmTitle="Delete" ButtonType="ImageButton" CommandName="Delete" HeaderStyle-Width="25" />

                    </Columns>

            </MasterTableView>
      
            </telerik:RadGrid>
          </div>
        </div>  
         <div style="background-color:#afb3b7; border-radius:3px; background-image:-webkit-linear-gradient(top,#ced2d6 0,#afb3b7 100%)">
            <telerik:RadTabStrip ID="ViewChooser" Skin="Silk" Style="margin-top: 10px;"  EnableViewState="false" 
                OnClientTabSelected="tabSelected" SelectedIndex="0" runat="server">
           
                    <Tabs >
                        <telerik:RadTab Text="상세/수정" Value="PolicyDetail.ascx" ImageUrl="/Images/s.png" Selected="True" />
                        <telerik:RadTab Text="그룹추가" Value="PolicyAdd.ascx" ImageUrl="/Images/s.png"  />
                        <telerik:RadTab Text="사용자추가" Value="PolicyAdd.ascx" ImageUrl="/Images/s.png"  />
                    </Tabs>
            </telerik:RadTabStrip>
        </div>
      	    <div class="content">
                                 
                 <div class="panelShowCss"; id="GroupDetailPanelDiv">
		        <asp:Panel runat="server" ID="GroupDetailPanel" Visible="true"> 
                  <GroupDetails:GroupDetails ID="GroupDetails" runat="server" Visible="true"/>
                </asp:Panel>
                  </div>
                  
                  <div class="panelCss" id="UserDetailPanelDiv">
                  <UserDetails:UserDetails ID="UserDetails" runat="server" Visible="true"  />
                  </div>
                  <div class="panelCss" id="AddGroupPanelDiv">
                    <AddGroup:AddGroup ID="AddGroup" runat="server" Visible="true"/>
                  </div>
                  <div class="panelCss" id="AddUserPanelDiv">
                      <AddUser:AddUser ID="AddUser" runat="server" Visible="true"  />
                  </div>
                      
                <telerik:RadAjaxLoadingPanel runat="server" ID="ContentLoadingPanel" IsSticky="true" skin="Metro" />
	        </div>
            <div>
                
            </div>
        </div>
        
     </div>  
    
</asp:Content>