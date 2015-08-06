<%@ page language="C#" autoeventwireup="true" inherits="View_Page_ServicePlan_AddPolicy, App_Web_addpolicy.aspx.3f79e8dd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
    </title>
      <script type="text/javascript">
                (function (global, undefined) {
                    var telerikBtn = global.telerikBtn = {};


                    telerikBtn.ConfirmAddPolicy = function (sender, eventArgs) {

                        alert("정책추가 완료");
                        window.opener.location.href = "/View/Page/ServicePlan/PolicyManage.aspx"
                        window.close();
                    }
                })(window);

    </script>
</head>
<body style="margin:0px">
    <form id="MainMaster" runat="server" style="height:450px; width :650px; position:absolute; top:0px; bottom:0px; margin-left: 12px" >
<style type="text/css">
    input{
        text-align: left;
        line-height:22px !important;
        font-family:'Segoe UI';
        font-weight:500;
        margin-left:10px;
        width:200px;
    }
    label {
        font-family:'Segoe UI';
        font-size:small;
        font-weight:700;
    }
    .profileData div {
        margin-top:10px;
    }

    .RadComboBox_Bootstrap {

        margin-left:10px;

    }
 </style>
<asp:ScriptManager ID="Manager" runat="server">

</asp:ScriptManager> 


    <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">정책추가</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>
    <div class="demo-container size-custom mtFix" style="width:100%">


         <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="RadTApply">
                    <UpdatedControls>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerWallPaper" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerWinDrag" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerAni" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerTheme" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerFontSmooth" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
                  <telerik:AjaxSetting AjaxControlID="RadTNotApply">
                    <UpdatedControls>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerWallPaper" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerWinDrag" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerAni" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerTheme" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerFontSmooth" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="RadTInh">
                    <UpdatedControls>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerWallPaper" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerWinDrag" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerAni" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerTheme" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerFontSmooth" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="RadTClient">
                    <UpdatedControls>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerWallPaper" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerWinDrag" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerAni" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerTheme" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="RadTogglePerFontSmooth" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>




               <telerik:AjaxSetting AjaxControlID="RadioClipApply">
                    <UpdatedControls>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnClipDown" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnClipUpload" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
               <telerik:AjaxSetting AjaxControlID="RadioClipNotApply">
                    <UpdatedControls>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnClipDown" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnClipUpload" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
               <telerik:AjaxSetting AjaxControlID="RadioClipClient">
                    <UpdatedControls>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnClipDown" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnClipUpload" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
               <telerik:AjaxSetting AjaxControlID="RadioClipInh">
                    <UpdatedControls>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnClipDown" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnClipUpload" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>



               <telerik:AjaxSetting AjaxControlID="RadioDriveApply">
                    <UpdatedControls>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveDown" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveUpload" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
               <telerik:AjaxSetting AjaxControlID="RadioDriveNotApply">
                    <UpdatedControls>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveDown" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveUpload" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
               <telerik:AjaxSetting AjaxControlID="RadioDriveClient">
                    <UpdatedControls>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveDown" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveUpload" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
               <telerik:AjaxSetting AjaxControlID="RadioDriveInh">
                    <UpdatedControls>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveDown" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveUpload" LoadingPanelID="LoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
             </AjaxSettings>
        </telerik:RadAjaxManager>       


        <fieldset style="background-color:#E1EAFF; border-radius:20px">
              <div class="profileData">
                <h3 style="font-size:smaller; margin-bottom:30px;">정책을 추가하기 위한 정보를 입력하여 주세요.</h3>
                <div class="inputWrapper">

                  <table>
                      <tr style="margin-bottom:300px">
                          <td><label for="정책명">정책명
                        </label></td>
                          <td><input type="text" id="searchInput" runat="server" style="height:25px; width:250px;" />
                           </td>
                      </tr>
                      <tr>
                          <td><label for="접속권한">접속권한</label></td>
                          <td><telerik:RadComboBox runat="server" id="ComboPermission" OnItemsRequested="ComboPermission_ItemsRequested" /></td>
                          <td><label for="Resolution">해상도</label></td>
                          <td><telerik:RadComboBox runat="server" id="ComboResolution" /></td>
                       </tr>
                       <tr>
                          <td><label for="Resolution">사운드</label></td>
                          <td><telerik:RadComboBox runat="server" id="RadComboSound" /></td>
                           <td><label for="Resolution">자동업데이트</label></td>
                          <td><telerik:RadComboBox runat="server" id="RadComboAutoUpdate" /></td>
                       </tr>
                   </table> 

                    <table>
                        <tr>
                          <td><label for="Resolution">클립보드</label></td>
                            </tr>
                    </table>

                    <table>
                        <tr>
                            <td>
                                <telerik:RadButton ID="RadioClipApply" runat="server" ToggleType="Radio" ButtonType="ToggleButton" AutoPostBack="true"
                                     GroupName="ClipButton" OnCheckedChanged="RadioClipApply_CheckedChanged" Checked="true" >
                                    <ToggleStates>
                                        <telerik:RadButtonToggleState Text="허용" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                        <telerik:RadButtonToggleState Text="허용" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                    </ToggleStates>
                                </telerik:RadButton>
                            </td>
                            <td>
                                <telerik:RadButton ID="RadioClipNotApply" runat="server" ToggleType="Radio" ButtonType="ToggleButton"  Checked="false"
                                    GroupName="ClipButton" AutoPostBack="true" OnCheckedChanged="RadTApply_CheckedChanged">
                                    <ToggleStates>
                                        <telerik:RadButtonToggleState Text="허용안함" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                        <telerik:RadButtonToggleState Text="허용안함" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                    </ToggleStates>
                                </telerik:RadButton>
                            </td>
                            <td>
                                 <telerik:RadButton ID="RadioClipInh" runat="server" ToggleType="Radio" Checked="false" OnCheckedChanged="RadTApply_CheckedChanged"
                                    GroupName="ClipButton" ButtonType="ToggleButton" AutoPostBack="true">
                                    <ToggleStates>
                                        <telerik:RadButtonToggleState Text="상위정책우선" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                        <telerik:RadButtonToggleState Text="상위정책우선" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                    </ToggleStates>
                                </telerik:RadButton>
                            </td>
                             <td>
                                 <telerik:RadButton ID="RadioClipClient" runat="server" ToggleType="Radio" Checked="false" OnCheckedChanged="RadTApply_CheckedChanged"
                                    GroupName="ClipButton" ButtonType="ToggleButton" AutoPostBack="true">
                                    <ToggleStates>
                                        <telerik:RadButtonToggleState Text="클라이언트설정우선" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                        <telerik:RadButtonToggleState Text="클라이언트설정우선" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                    </ToggleStates>
                                </telerik:RadButton>
                            </td>

                        </tr>
                    </table>


                    <table>
                      <tr>
                          <td>
                              <telerik:RadButton ID="CheckBtnClipDown" runat="server" ToggleType="CheckBox" ButtonType="LinkButton" Checked="false" AutoPostBack="false">
                                  <ToggleStates>
                                    <telerik:RadButtonToggleState Text="다운로드 허용" PrimaryIconCssClass="rbToggleCheckboxChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="다운로드 허용안함" PrimaryIconCssClass="rbToggleCheckbox"></telerik:RadButtonToggleState>
                                </ToggleStates>
                              </telerik:RadButton>
                          </td>
                          <td>
                              <telerik:RadButton ID="CheckBtnClipUpload" runat="server" ToggleType="CheckBox" ButtonType="LinkButton" Checked="false" AutoPostBack="false">
                                  <ToggleStates>
                                    <telerik:RadButtonToggleState Text="업로드 허용" PrimaryIconCssClass="rbToggleCheckboxChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="업로드 허용안함" PrimaryIconCssClass="rbToggleCheckbox"></telerik:RadButtonToggleState>
                                </ToggleStates>
                              </telerik:RadButton>
                          </td>
                       </tr>
                    </table>
                                        
                    <table>
                        <tr>
                           <td><label for="Resolution">드라이브</label></td>
                       </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <telerik:RadButton ID="RadioDriveApply" runat="server" ToggleType="Radio" ButtonType="ToggleButton" AutoPostBack="true"
                                     GroupName="DriveButton" OnCheckedChanged="RadioDriveApply_CheckedChanged" Checked="true">
                                    <ToggleStates>
                                        <telerik:RadButtonToggleState Text="허용" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                        <telerik:RadButtonToggleState Text="허용" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                    </ToggleStates>
                                </telerik:RadButton>
                            </td>
                            <td>
                                <telerik:RadButton ID="RadioDriveNotApply" runat="server" ToggleType="Radio" ButtonType="ToggleButton"  Checked="false"
                                    GroupName="DriveButton" AutoPostBack="true" OnCheckedChanged="RadTApply_CheckedChanged">
                                    <ToggleStates>
                                        <telerik:RadButtonToggleState Text="허용안함" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                        <telerik:RadButtonToggleState Text="허용안함" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                    </ToggleStates>
                                </telerik:RadButton>
                            </td>
                            <td>
                                 <telerik:RadButton ID="RadioDriveInh" runat="server" ToggleType="Radio" Checked="false" OnCheckedChanged="RadTApply_CheckedChanged"
                                    GroupName="DriveButton" ButtonType="ToggleButton" AutoPostBack="true">
                                    <ToggleStates>
                                        <telerik:RadButtonToggleState Text="상위정책우선" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                        <telerik:RadButtonToggleState Text="상위정책우선" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                    </ToggleStates>
                                </telerik:RadButton>
                            </td>
                             <td>
                                 <telerik:RadButton ID="RadioDriveClient" runat="server" ToggleType="Radio" Checked="false" OnCheckedChanged="RadTApply_CheckedChanged"
                                    GroupName="DriveButton" ButtonType="ToggleButton" AutoPostBack="true">
                                    <ToggleStates>
                                        <telerik:RadButtonToggleState Text="클라이언트설정우선" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                        <telerik:RadButtonToggleState Text="클라이언트설정우선" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                    </ToggleStates>
                                </telerik:RadButton>
                            </td>
                        </tr>
                    </table>


                                        <table>
                      <tr>
                          <td>
                              <telerik:RadButton ID="CheckBtnDriveDown" runat="server" ToggleType="CheckBox" ButtonType="LinkButton" Checked="false" AutoPostBack="false">
                                  <ToggleStates>
                                    <telerik:RadButtonToggleState Text="다운로드 허용" PrimaryIconCssClass="rbToggleCheckboxChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="다운로드 허용안함" PrimaryIconCssClass="rbToggleCheckbox"></telerik:RadButtonToggleState>
                                </ToggleStates>
                              </telerik:RadButton>
                          </td>
                          <td>
                              <telerik:RadButton ID="CheckBtnDriveUpload" runat="server" ToggleType="CheckBox" ButtonType="LinkButton" Checked="false" AutoPostBack="false">
                                  <ToggleStates>
                                    <telerik:RadButtonToggleState Text="업로드 허용" PrimaryIconCssClass="rbToggleCheckboxChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="업로드 허용안함" PrimaryIconCssClass="rbToggleCheckbox"></telerik:RadButtonToggleState>
                                </ToggleStates>
                              </telerik:RadButton>
                          </td>
                       </tr>
                    </table>


                    <table style="margin-top:5px">
                        <tr>
                            <td><label for="Resolution">퍼포먼스</label></td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <telerik:RadButton ID="RadTApply" runat="server" ToggleType="Radio" ButtonType="ToggleButton" AutoPostBack="true"
                                     GroupName="PerformanceButton" OnCheckedChanged="RadTApply_CheckedChanged" Checked="true">
                                    <ToggleStates>
                                        <telerik:RadButtonToggleState Text="허용" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                        <telerik:RadButtonToggleState Text="허용" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                    </ToggleStates>
                                </telerik:RadButton>
                            </td>
                            <td>
                                <telerik:RadButton ID="RadTNotApply" runat="server" ToggleType="Radio" ButtonType="ToggleButton" 
                                    GroupName="PerformanceButton" AutoPostBack="true" OnCheckedChanged="RadTApply_CheckedChanged">
                                    <ToggleStates>
                                        <telerik:RadButtonToggleState Text="허용안함" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                        <telerik:RadButtonToggleState Text="허용안함" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                    </ToggleStates>
                                </telerik:RadButton>
                            </td>
                            <td>
                                 <telerik:RadButton ID="RadTInh" runat="server" ToggleType="Radio" Checked="false" OnCheckedChanged="RadTApply_CheckedChanged"
                                    GroupName="PerformanceButton" ButtonType="ToggleButton" AutoPostBack="true">
                                    <ToggleStates>
                                        <telerik:RadButtonToggleState Text="상위정책우선" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                        <telerik:RadButtonToggleState Text="상위정책우선" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                    </ToggleStates>
                                </telerik:RadButton>
                            </td>
                             <td>
                                 <telerik:RadButton ID="RadTClient" runat="server" ToggleType="Radio" Checked="false" OnCheckedChanged="RadTApply_CheckedChanged"
                                    GroupName="PerformanceButton" ButtonType="ToggleButton" AutoPostBack="true">
                                    <ToggleStates>
                                        <telerik:RadButtonToggleState Text="클라이언트설정우선" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                        <telerik:RadButtonToggleState Text="클라이언트설정우선" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                    </ToggleStates>
                                </telerik:RadButton>
                            </td>

                        </tr>
                    </table>
                    <table>
                      <tr>
                          <td>
                              <telerik:RadButton ID="RadTogglePerWallPaper" runat="server" ToggleType="CheckBox" ButtonType="LinkButton" Checked="false" AutoPostBack="false">
                                  <ToggleStates>
                                    <telerik:RadButtonToggleState Text="Show WallPaper" PrimaryIconCssClass="rbToggleCheckboxChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="Disable WallPaper" PrimaryIconCssClass="rbToggleCheckbox"></telerik:RadButtonToggleState>
                                </ToggleStates>
                              </telerik:RadButton>
                          </td>
                          <td>
                              <telerik:RadButton ID="RadTogglePerWinDrag" runat="server" ToggleType="CheckBox" ButtonType="LinkButton" Checked="false" AutoPostBack="false">
                                  <ToggleStates>
                                    <telerik:RadButtonToggleState Text="Enable Full Window Drag" PrimaryIconCssClass="rbToggleCheckboxChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="Disable Full Window Drag" PrimaryIconCssClass="rbToggleCheckbox"></telerik:RadButtonToggleState>
                                </ToggleStates>
                              </telerik:RadButton>
                          </td>
                       </tr>
                    </table>
                       <table>
                        <tr>
                            <td>
                              <telerik:RadButton ID="RadTogglePerAni" runat="server" ToggleType="CheckBox" ButtonType="LinkButton" Checked="false" AutoPostBack="false">
                                  <ToggleStates>
                                    <telerik:RadButtonToggleState Text="Enable Menu Animation" PrimaryIconCssClass="rbToggleCheckboxChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="Disable Menu Animation" PrimaryIconCssClass="rbToggleCheckbox"></telerik:RadButtonToggleState>
                                </ToggleStates>
                              </telerik:RadButton>
                          </td>
                            <td>
                              <telerik:RadButton ID="RadTogglePerTheme" runat="server" ToggleType="CheckBox" ButtonType="LinkButton" Checked="false" AutoPostBack="false">
                                  <ToggleStates>
                                    <telerik:RadButtonToggleState Text="Enable Themes" PrimaryIconCssClass="rbToggleCheckboxChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="Disable Themes" PrimaryIconCssClass="rbToggleCheckbox"></telerik:RadButtonToggleState>
                                </ToggleStates>
                              </telerik:RadButton>
                          </td>
                            <td>
                              <telerik:RadButton ID="RadTogglePerFontSmooth" runat="server" ToggleType="CheckBox" ButtonType="LinkButton" Checked="false" AutoPostBack="false">
                                  <ToggleStates>
                                    <telerik:RadButtonToggleState Text="Enable Font Smoothing" PrimaryIconCssClass="rbToggleCheckboxChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="Disable Font Smoothing" PrimaryIconCssClass="rbToggleCheckbox"></telerik:RadButtonToggleState>
                                </ToggleStates>
                              </telerik:RadButton>
                          </td>
                        </tr>
                    </table>       
                 </div>
              </div>
        </fieldset>
        
    </div>
        <div style="height:15px;">

        </div>
    <div style="margin-right:5px; text-align:center">
        <telerik:RadButton ID="RadBtnAddPolicy" ButtonType="StandardButton" runat="server" Text="정책추가" OnClientClicked="telerikBtn.ConfirmAddPolicy" ></telerik:RadButton>
    </div>
        <div class="panelBottom">
            <telerik:RadAjaxLoadingPanel ID="LoadingPanel1" runat="server" BackgroundPosition="Center" skin="Metro">
            </telerik:RadAjaxLoadingPanel>
        </div>
    </form>
</body>
</html>
