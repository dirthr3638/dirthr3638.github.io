<%@ control language="C#" autoeventwireup="true" inherits="View_Page_ServicePlan_UserControl_PolicyDetail, App_Web_policydetail.ascx.8ae3ee8a" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

      <script type="text/javascript">
          (function (global, undefined) {
              
              var telerikBtn = global.telerikBtn = {};


              telerikBtn.ConfirmAddPolicy = function (sender, eventArgs) {

                  var btn = $find("<%# FindControl("SaveBtn").ClientID %>");

                  if (btn.get_text() == "정책추가") {
                      var a = $find("<%# FindControl("searchInput").ClientID %>");
                      var txt = a.get_value();
                      if (!txt) {
                          alert("정책명을 입력하여 주세요.");
                          eventArgs.set_cancel(true);
                      }
                  }

              }
          })(window);

    </script>

<telerik:RadAjaxManagerProxy ID="AjaxManagerProxy" runat="server">
    <AjaxSettings>
        <telerik:AjaxSetting AjaxControlID="RadioClipApply">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="CheckBtnClipDown" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="CheckBtnClipUpload" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="RadioClipNotApply">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="CheckBtnClipDown" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="CheckBtnClipUpload" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="RadioClipInh">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="CheckBtnClipDown" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="CheckBtnClipUpload" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="RadioClipClient">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="CheckBtnClipDown" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="CheckBtnClipUpload" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>


        <telerik:AjaxSetting AjaxControlID="RadioDriveApply">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveDown" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveUpload" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="RadioDriveNotApply">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveDown" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveUpload" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="RadioDriveInh">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveDown" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveUpload" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="RadioDriveClient">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveDown" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="CheckBtnDriveUpload" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>


        <telerik:AjaxSetting AjaxControlID="PerformRadioApply">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerWallPaper" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerWinDrag" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerAni" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerTheme" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerFontSmooth" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
         <telerik:AjaxSetting AjaxControlID="PerformRadioNotApply">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerWallPaper" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerWinDrag" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerAni" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerTheme" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerFontSmooth" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="PerformRadioInh">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerWallPaper" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerWinDrag" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerAni" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerTheme" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerFontSmooth" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="PerformRadioClient">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerWallPaper" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerWinDrag" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerAni" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerTheme" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="RadTogglePerFontSmooth" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>    
        
        <%--<telerik:AjaxSetting AjaxControlID="SaveBtn">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="SaveBtn" LoadingPanelID="RadAjaxLoadingPanel1" />

            </UpdatedControls>
        </telerik:AjaxSetting>    
        --%>
        
                           
    </AjaxSettings>
</telerik:RadAjaxManagerProxy>
<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" skin="Metro"/>


<style type="text/css">

    label {
        font-family:'Segoe UI';
        font-size:small;
        font-weight:700;
    }
    .profileData div {
        margin-top:12px;
        vertical-align:central;
        
    }

    .rbToggleCheckbox {
        vertical-align:central;
        transform:translate(0px,-2px);
    }
    .RadButton_Silk.rbLinkButton{

        margin-top:-15px;
    }

    .RadComboBox 
    {
        transform:translate(0px, -8px);
        margin-right:36px;
    }        

 </style>
   <div class="demo-container size-custom mtFix" style="width:100%; height:auto">
     <telerik:RadSkinManager runat="server" Skin="Silk">
     </telerik:RadSkinManager>
              <div class="profileData" style="border: 1px solid threedshadow; padding:15px;">
                    <div  style="width:100%; height:30px; text-align:left;">
                        <label for="정책명">정책명</label>
                        <telerik:RadTextBox ID="searchInput" runat="server" Width="250px" Height="25px">
                        </telerik:RadTextBox>
                        <telerik:RadTextBox ID="TextBoxPolicyID" runat="server" Width="250px" Height="25px" Display="false">
                        </telerik:RadTextBox>

                        <div style=" float:right">
                            <telerik:RadButton ID="SaveBtn" Text="정책수정" AutoPostBack="true" OnClick="SaveBtn_Click" ButtonType="LinkButton" OnClientClicking="telerikBtn.ConfirmAddPolicy"
                            runat="server"  ></telerik:RadButton>
                        </div>
                    </div>
                     <div style="width:100%; height:30px; text-align:left; clear:both;">
                         <label for="접속권한">접속권한</label>
                         <telerik:RadComboBox runat="server" id="ComboPermission" OnItemsRequested="ComboPermission_ItemsRequested" />
                         <label for="Resolution">해상도</label>
                          <telerik:RadComboBox runat="server" id="ComboResolution" />
                         <label for="Resolution">사운드</label>
                          <telerik:RadComboBox runat="server" id="RadComboSound" />
                          <label for="Resolution">자동업데이트</label>
                          <telerik:RadComboBox runat="server" id="RadComboAutoUpdate" />
                     </div>     
                    <div style="width:100%; height:30px; text-align:left; clear:both;">
                        <div style="float:left; width:38%">
                           <label for="Resolution">클립보드</label>
                        </div>       
                        <div style="float:left; width:62%">
                               <label for="Resolution">드라이브</label>
                         </div>   
                    </div>

                    <div style="width:100%; height:30px; text-align:left;">  <%--클립보드 / 드라이브에 대한 라디오버튼--%>
                        <div style="float:left; width:38%">
                            <telerik:RadButton ID="RadioClipApply" runat="server" ToggleType="Radio" ButtonType="ToggleButton" AutoPostBack="true"
                                    GroupName="ClipButton" OnCheckedChanged="RadioClipApply_CheckedChanged" Checked="true" >
                                <ToggleStates>
                                    <telerik:RadButtonToggleState Text="허용" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="허용" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                </ToggleStates>
                            </telerik:RadButton>
                          
                            <telerik:RadButton ID="RadioClipNotApply" runat="server" ToggleType="Radio" ButtonType="ToggleButton"  Checked="false"
                                GroupName="ClipButton" AutoPostBack="true" OnCheckedChanged="RadTApply_CheckedChanged">
                                <ToggleStates>
                                    <telerik:RadButtonToggleState Text="허용안함" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="허용안함" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                </ToggleStates>
                            </telerik:RadButton>
                            
                                <telerik:RadButton ID="RadioClipInh" runat="server" ToggleType="Radio" Checked="false" OnCheckedChanged="RadTApply_CheckedChanged"
                                GroupName="ClipButton" ButtonType="ToggleButton" AutoPostBack="true">
                                <ToggleStates>
                                    <telerik:RadButtonToggleState Text="상위정책우선" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="상위정책우선" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                </ToggleStates>
                            </telerik:RadButton>
                            
                            
                                <telerik:RadButton ID="RadioClipClient" runat="server" ToggleType="Radio" Checked="false" OnCheckedChanged="RadTApply_CheckedChanged"
                                GroupName="ClipButton" ButtonType="ToggleButton" AutoPostBack="true">
                                <ToggleStates>
                                    <telerik:RadButtonToggleState Text="클라이언트설정우선" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="클라이언트설정우선" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                </ToggleStates>
                            </telerik:RadButton>
                        </div>
                      
                        <div style="float:left; width:62%">                           
                        <telerik:RadButton ID="RadioDriveApply" runat="server" ToggleType="Radio" ButtonType="ToggleButton" AutoPostBack="true"
                                    GroupName="DriveButton" OnCheckedChanged="RadioDriveApply_CheckedChanged" Checked="true">
                                <ToggleStates>
                                    <telerik:RadButtonToggleState Text="허용" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="허용" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                </ToggleStates>
                            </telerik:RadButton>
                            <telerik:RadButton ID="RadioDriveNotApply" runat="server" ToggleType="Radio" ButtonType="ToggleButton"  Checked="false"
                                GroupName="DriveButton" AutoPostBack="true" OnCheckedChanged="RadTApply_CheckedChanged">
                                <ToggleStates>
                                    <telerik:RadButtonToggleState Text="허용안함" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="허용안함" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                </ToggleStates>
                            </telerik:RadButton>
                      
                                <telerik:RadButton ID="RadioDriveInh" runat="server" ToggleType="Radio" Checked="false" OnCheckedChanged="RadTApply_CheckedChanged"
                                GroupName="DriveButton" ButtonType="ToggleButton" AutoPostBack="true">
                                <ToggleStates>
                                    <telerik:RadButtonToggleState Text="상위정책우선" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="상위정책우선" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                </ToggleStates>
                            </telerik:RadButton>
                           
                                <telerik:RadButton ID="RadioDriveClient" runat="server" ToggleType="Radio" Checked="false" OnCheckedChanged="RadTApply_CheckedChanged"
                                GroupName="DriveButton" ButtonType="ToggleButton" AutoPostBack="true">
                                <ToggleStates>
                                    <telerik:RadButtonToggleState Text="클라이언트설정우선" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="클라이언트설정우선" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                </ToggleStates>
                            </telerik:RadButton>
                         </div> 

                    </div>

                    <div style="width:100%; height:30px; text-align:left; clear:both;"> <%--클립보드 / 드라이브에 대한 토글버튼--%>
                            <div style="float:left; width:38%; height:30px;">
                                    <table style="height:30px">     
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

                            </div>

                            <div style="width:62%; float:left;">
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
                            </div>
                    </div>  

                        <div style="width:100%; height:50px; text-align:left; clear:both;" >
                             <div style="float:left; width:100%;">
                                <label for="Resolution" style="float:left">퍼포먼스</label>
                            </div>
                      </div>
                    <div style="width:100%; height:30px; text-align:left; clear:both;" >
                            <telerik:RadButton ID="PerformRadioApply" runat="server" ToggleType="Radio" ButtonType="ToggleButton" AutoPostBack="true"
                                    GroupName="PerformanceButton" OnCheckedChanged="RadTApply_CheckedChanged" Checked="true">
                                <ToggleStates>
                                    <telerik:RadButtonToggleState Text="허용" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="허용" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                </ToggleStates>
                            </telerik:RadButton>
                            
                            <telerik:RadButton ID="PerformRadioNotApply" runat="server" ToggleType="Radio" ButtonType="ToggleButton" 
                                GroupName="PerformanceButton" AutoPostBack="true" >
                                <ToggleStates>
                                    <telerik:RadButtonToggleState Text="허용안함" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="허용안함" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                </ToggleStates>
                            </telerik:RadButton>
                            
                                <telerik:RadButton ID="PerformRadioInh" runat="server" ToggleType="Radio" Checked="false" OnCheckedChanged="RadTApply_CheckedChanged"
                                GroupName="PerformanceButton" ButtonType="ToggleButton" AutoPostBack="true">
                                <ToggleStates>
                                    <telerik:RadButtonToggleState Text="상위정책우선" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="상위정책우선" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                </ToggleStates>
                            </telerik:RadButton>
                            
                                <telerik:RadButton ID="PerformRadioClient" runat="server" ToggleType="Radio" Checked="false" OnCheckedChanged="RadTApply_CheckedChanged"
                                GroupName="PerformanceButton" ButtonType="ToggleButton" AutoPostBack="true">
                                <ToggleStates>
                                    <telerik:RadButtonToggleState Text="클라이언트설정우선" PrimaryIconCssClass="rbToggleRadioChecked"></telerik:RadButtonToggleState>
                                    <telerik:RadButtonToggleState Text="클라이언트설정우선" PrimaryIconCssClass="rbToggleRadio"></telerik:RadButtonToggleState>
                                </ToggleStates>
                            </telerik:RadButton>
                    </div>
                    <div style="width:100%; height:30px; text-align:left;">
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
    </div>

