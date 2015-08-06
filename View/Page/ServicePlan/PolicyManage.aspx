<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_ServicePlan_PolicyManage, App_Web_policymanage.aspx.3f79e8dd" %>

<%@ Register Src="~/View/Page/ServicePlan/UserControl/PolicyDetail.ascx" TagPrefix="policyDetails" TagName="policyDetails" %>


<asp:Content ID="PolicyContent"  runat="Server" ContentPlaceHolderID="Rightcontent">    
<style type="text/css">
    .RadGrid 
    {
    outline : none;
    }
</style>
    <script type="text/javascript">
        (function (global, undefined) {
            var telerikBtn = global.telerikBtn = {};


            telerikBtn.PopupAddPolicy = function (sender, eventArgs) {
                var l = (screen.width - 678) / 2;
                var t = (screen.height - 700) / 2;

                window.open("./AddPolicy.aspx", "NewWin", "left=" + l + ", top=" + t + ",width=678,height=700,scrollbars=no,status=no,toolbar=no");
            }
        })(window);

        var policyName, currentPolicy;
        var policies =
            {
                PolicyID: null,
                PolicyName: null,
                Clipboard: null, 
                Drive: null, 
                Sound: null, 
                Performance: null, 
                AutoUpdate: null, 
                Permission: null,
                Resolution: null,
               
                create: function () {
                    var obj = new Object();

                    obj.PolicyID = "-1";
                    obj.PolicyName = "";
                    obj.Clipboard = "0";
                    obj.Sound = "사용함";
                    obj.Drive = "사용함";
                    obj.AutoUpdate = "사용함";
                    obj.Permission = "접속불가";
                    obj.Resolution = "전체화면";
                    obj.Performance = "0";
                    return obj;
                }
            };

        function repaintGrid(sender, args) {


            alert('정책추가가 완료되었습니다.');
        }

        function rowSelected(sender, args) {
            $find("<%# ViewChooser.ClientID %>").set_selectedIndex(0);
            var policies = getValues(sender, args.get_gridDataItem());
            currentPolicy = policies;
            setValues(policies);
        }

        function getDataItemKeyValue(radGrid, item) {
         
            return (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Clipboard").innerHTML);
        }
                
        function tabSelected(sender, args) {
            
            switch (args.get_tab().get_index())
            {
                    case 1:
                    {
                            var btn = $find("<%# policyDetails.FindControl("SaveBtn").ClientID %>");
                            var emptpy = policies.create();
                            setValues(emptpy);
                            btn.set_text("정책추가");

                        break;
                    }
                    default:
                    {

                        var btn = $find("<%# policyDetails.FindControl("SaveBtn").ClientID %>");
                        btn.set_text("변경내용저장");

                        break;
                    }
            }
        }

        function getValues(radGrid, item) {
            //var aaa = radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Clipboard").innerHTML;
            var newPolicies = policies.create();
            newPolicies.PolicyID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "PolicyID").innerHTML);
            newPolicies.PolicyName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "PolicyName").innerHTML);
            newPolicies.Clipboard = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Clipboard").innerHTML);
            newPolicies.Drive = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Drive").innerHTML);
            newPolicies.AutoUpdate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "AutoUpdate").innerHTML);
            newPolicies.Resolution = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Resolution").innerHTML);
            newPolicies.Sound = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Sound").innerHTML);
            newPolicies.Performance = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Performance").innerHTML);
            newPolicies.Permission = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "ConnectPermission").innerHTML);
           
            return newPolicies;
        }

        function setValues(policies) {

            ($find("<%# Content.FindControl("policyDetails").FindControl("searchInput").ClientID %>")).set_value(policies.PolicyName);
            ($find("<%# Content.FindControl("policyDetails").FindControl("TextBoxPolicyID").ClientID %>")).set_value(policies.PolicyID);
            var a = ($find("<%# Content.FindControl("policyDetails").FindControl("ComboPermission").ClientID %>")).findItemByText(policies.Permission).select();
            ($find("<%# Content.FindControl("policyDetails").FindControl("ComboResolution").ClientID %>")).findItemByText(policies.Resolution).select();
            ($find("<%# Content.FindControl("policyDetails").FindControl("RadComboSound").ClientID %>")).findItemByText(policies.Sound).select();
            ($find("<%# Content.FindControl("policyDetails").FindControl("RadComboAutoUpdate").ClientID %>")).findItemByText(policies.AutoUpdate).select();
            setCheckedClipUI(policies.Clipboard);
            setCheckedDriveUI(policies.Drive);
            setCheckedPerformanceUI(policies.Performance);
        }

        function setCheckedClipUI(policy) {
            if (policy == "허용안함") {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioClipNotApply").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipDown").ClientID %>")).set_enabled(false);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipUpload").ClientID %>")).set_enabled(false);

            }
            else if (policy == "업로드/다운로드 허용") {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioClipApply").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipDown").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipUpload").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipDown").ClientID %>")).set_enabled(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipUpload").ClientID %>")).set_enabled(true);
            }
            else if (policy == "업로드 허용") {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioClipApply").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipDown").ClientID %>")).set_checked(false);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipUpload").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipDown").ClientID %>")).set_enabled(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipUpload").ClientID %>")).set_enabled(true);
            }
            else if (policy == "다운로드 허용") {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioClipApply").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipDown").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipUpload").ClientID %>")).set_checked(false);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipDown").ClientID %>")).set_enabled(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipUpload").ClientID %>")).set_enabled(true);
            }
            else if (policy == "상위정책우선") {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioClipInh").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipDown").ClientID %>")).set_enabled(false);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipUpload").ClientID %>")).set_enabled(false);
            }
            else if (policy == "클라이언트설정우선") {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioClipClient").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipDown").ClientID %>")).set_enabled(false);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipUpload").ClientID %>")).set_enabled(false);
            }
            else {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioClipNotApply").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipDown").ClientID %>")).set_enabled(false);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnClipUpload").ClientID %>")).set_enabled(false);
            }
        }


        function setCheckedDriveUI(policy) {
            if (policy == "허용안함") {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioDriveNotApply").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveDown").ClientID %>")).set_enabled(false);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveUpload").ClientID %>")).set_enabled(false);

            }
            else if (policy == "업로드/다운로드 허용") {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioDriveApply").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveDown").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveUpload").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveDown").ClientID %>")).set_enabled(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveUpload").ClientID %>")).set_enabled(true);
            }
            else if (policy == "업로드 허용") {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioDriveApply").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveDown").ClientID %>")).set_checked(false);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveUpload").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveDown").ClientID %>")).set_enabled(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveUpload").ClientID %>")).set_enabled(true);
            }
            else if (policy == "다운로드 허용") {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioDriveApply").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveDown").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveUpload").ClientID %>")).set_checked(false);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveDown").ClientID %>")).set_enabled(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveUpload").ClientID %>")).set_enabled(true);
            }
            else if (policy == "상위정책우선") {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioDriveInh").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveDown").ClientID %>")).set_enabled(false);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveUpload").ClientID %>")).set_enabled(false);
            }
            else if (policy == "클라이언트설정우선") {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioDriveClient").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveDown").ClientID %>")).set_enabled(false);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveUpload").ClientID %>")).set_enabled(false);
            }
            else {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadioDriveNotApply").ClientID %>")).set_checked(true);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveDown").ClientID %>")).set_enabled(false);
                ($find("<%# Content.FindControl("policyDetails").FindControl("CheckBtnDriveUpload").ClientID %>")).set_enabled(false);
            }
            
        }

        function setCheckedPerformanceUI(policy)
        {
            var numP = parseInt(policy);
            function EnableCheckbox(value) {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerWallPaper").ClientID %>")).set_enabled(value);
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerWinDrag").ClientID %>")).set_enabled(value);
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerAni").ClientID %>")).set_enabled(value);
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerTheme").ClientID %>")).set_enabled(value);
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerFontSmooth").ClientID %>")).set_enabled(value);
            }
            function CheckTogglebtn(wallpaper, windrga, ani, theme, smooth) {
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerWallPaper").ClientID %>")).set_checked(wallpaper);
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerWinDrag").ClientID %>")).set_checked(windrga);
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerAni").ClientID %>")).set_checked(ani);
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerTheme").ClientID %>")).set_checked(theme);
                ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerFontSmooth").ClientID %>")).set_checked(smooth);
            }


            if (numP == 0) {
                
                ($find("<%# Content.FindControl("policyDetails").FindControl("PerformRadioNotApply").ClientID %>")).set_checked(true);
                EnableCheckbox(false);
            }

            else if (numP == 1024) {
                ($find("<%# Content.FindControl("policyDetails").FindControl("PerformRadioInh").ClientID %>")).set_checked(true);
                EnableCheckbox(false);
            }
            else if (numP == 2048) {
                ($find("<%# Content.FindControl("policyDetails").FindControl("PerformRadioClient").ClientID %>")).set_checked(true);
                EnableCheckbox(false);
            }

            else if (numP < 1024 && numP > 0) {
                ($find("<%# Content.FindControl("policyDetails").FindControl("PerformRadioApply").ClientID %>")).set_checked(true);
                EnableCheckbox(true);
                
                CheckTogglebtn(false, false, false, false, false);

                if (numP & 1) {
                    ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerWallPaper").ClientID %>")).set_checked(true);

                }
                if (numP & 2) {
                    ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerWinDrag").ClientID %>")).set_checked(true);

                }
                if (numP & 4) {
                    ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerAni").ClientID %>")).set_checked(true);

                }
                if (numP & 8) {
                    ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerTheme").ClientID %>")).set_checked(true);

                }
                if (numP & 16) {
                    ($find("<%# Content.FindControl("policyDetails").FindControl("RadTogglePerFontSmooth").ClientID %>")).set_checked(true);
                }
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

    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" skin="Metro" />


    <div id="title" style="width: 100%; height: 40px;">
            <div id="DivBtn" style="float:right " >
                <telerik:RadButton ButtonType="StandardButton" ID="RadExportExcel" runat="server" Text="엑셀추출" Icon-PrimaryIconUrl="~/Images/ExportExcel.png" 
                    OnClick="RadExportExcel_Click"></telerik:RadButton>
            </div>
        <p class="main-title" style="font-weight:600">정책 조회/수정</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>


    <div style="width:100%; height:310px">
        <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false" Height="100%"/>
            <div id="demo" class="demo-container no-bg" style="Height:100%">
            <telerik:RadGrid ID="PolicyGrid" runat="server" Width ="100%" Height="100%" Skin="Silk" OnSelectedIndexChanged="PolicyGrid_SelectedIndexChanged" 
            OnSelectedCellChanged="PolicyGrid_SelectedCellChanged" OnDataBound="PolicyGrid_DataBound"  OnLoad="PolicyGrid_Load" EnableViewState="False"
            OnNeedDataSource="PolicyGrid_NeedDataSource" SelectedItemStyle-BorderStyle="Solid" OnDeleteCommand="PolicyGrid_DeleteCommand" OnItemCommand="PolicyGrid_ItemCommand">
            <ClientSettings EnableRowHoverStyle="true">
                <Scrolling UseStaticHeaders="True" AllowScroll="true"/>
                <Selecting AllowRowSelect="true" EnableDragToSelectRows="False" UseClientSelectColumnOnly="false" CellSelectionMode="None" />
                <ClientEvents OnRowSelected="rowSelected" ></ClientEvents>
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" Name="PolicyTable" CommandItemDisplay="None" HorizontalAlign="Center"
                 AlternatingItemStyle-BorderStyle="Solid" TableLayout="Fixed" ClientDataKeyNames="ShowPolicyName" DataKeyNames="ShowPolicyID">
                
                <Columns>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="정책아이디"  DataField ="ShowPolicyID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowPolicyName" UniqueName="PolicyID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="정책명"  DataField ="ShowPolicyName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowPolicyName" UniqueName="PolicyName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="접속권한"  DataField ="ShowPermission" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowPermission" UniqueName="ConnectPermission" HeaderStyle-Width="70"  ItemStyle-HorizontalAlign="Center" Visible="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn  DataType="System.String" HeaderText="클립보드 접근권한" ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"  DataField ="ShowPolicyClipBoard"
                        SortExpression="Freight" UniqueName="Clipboard" HeaderStyle-Width="200" HeaderStyle-HorizontalAlign="Center" Visible="true">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn  HeaderText="Drive" SortExpression="드라이브 접근권한" DataType="System.String"  DataField ="ShowPolicyDrive" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        UniqueName="Drive" HeaderStyle-Width="200" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" Visible="true">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataType="System.String" HeaderText="자동업데이트"  DataField ="ShowAutoUpdate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowAutoUpdate" UniqueName="AutoUpdate" HeaderStyle-Width="200"  ItemStyle-HorizontalAlign="Center" Visible="true">
                    </telerik:GridBoundColumn> 
                    
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="퍼포먼스"  DataField ="ShowPerformance" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowPerformance" UniqueName="Performance" HeaderStyle-Width="200"  ItemStyle-HorizontalAlign="Center" Display="false" >
                    </telerik:GridBoundColumn> 

                    <telerik:GridBoundColumn DataType="System.String" HeaderText="Sound"  DataField ="ShowSound" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowSound" UniqueName="Sound" HeaderStyle-Width="200"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 

                    <telerik:GridBoundColumn DataType="System.String" HeaderText="해상도"  DataField ="ShowResolution" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowResolution" UniqueName="Resolution" HeaderStyle-Width="200"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 


                    <telerik:GridButtonColumn ConfirmText="해당 정책을 삭제하시겠습니까?" ConfirmDialogType="RadWindow" HeaderTooltip="Delete" UniqueName="DeletePolicy"
                        ConfirmTitle="Delete" ButtonType="ImageButton" CommandName="Delete" HeaderStyle-Width="15" />

                    </Columns>

                    <EditFormSettings ColumnNumber="2" CaptionDataField="ShowPolicyName" CaptionFormatString="{0} 정책을 수정합니다.">
                    <FormTableItemStyle Wrap="False"></FormTableItemStyle>
                    <FormCaptionStyle CssClass="EditFormHeader"></FormCaptionStyle>
                    <FormMainTableStyle CellPadding="1" CssClass="editTable"    
                        Width="100%"></FormMainTableStyle>
                    <FormTableStyle CellPadding="1" CssClass="module" Height="110px"></FormTableStyle>
                    <FormTableAlternatingItemStyle Wrap="False"></FormTableAlternatingItemStyle>
                    <EditColumn ButtonType="ImageButton" InsertText="Insert Order" UpdateText="Update an Order"
                        UniqueName="EditCommandColumn1" CancelText="Cancel edit">
                    </EditColumn>
                    <FormTableButtonRowStyle HorizontalAlign="Right" CssClass="EditFormButtonRow"></FormTableButtonRowStyle>
                </EditFormSettings>
            </MasterTableView>
      
            </telerik:RadGrid>
          </div>
        </div>  
         <div style="background-color:#afb3b7; border-radius:3px; background-image:-webkit-linear-gradient(top,#ced2d6 0,#afb3b7 100%)">
            <telerik:RadTabStrip ID="ViewChooser" OnTabClick="ViewChooser_TabClick" Skin="Silk" Style="margin-top: 10px;" 
                SelectedIndex="0" runat="server" OnClientTabSelected="tabSelected">
           
                    <Tabs >
                        <telerik:RadTab Text="정책상세/수정" Value="PolicyDetail.ascx" ImageUrl="/Images/s.png" Selected="True" />
                        <telerik:RadTab Text="정책추가" Value="PolicyAdd.ascx" ImageUrl="/Images/s.png"  />
                    </Tabs>
            </telerik:RadTabStrip>
        </div>
      	<div class="content">
		    <asp:Panel runat="server" ID="Content" > 
                <policyDetails:policyDetails ID="policyDetails" runat="server" />
		    </asp:Panel>
            <telerik:RadAjaxLoadingPanel runat="server" ID="ContentLoadingPanel" IsSticky="true" skin="Metro" />
	    </div>

</asp:Content>
