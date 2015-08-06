<%@ control language="C#" autoeventwireup="true" inherits="View_Page_User_UserControl_AddUser, App_Web_adduser.ascx.28c155c5" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>


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

        margin-top:-25px;
    }

    .RadComboBox 
    {
        transform:translate(0px, -8px);
        margin-right:36px;
    }
    .tableSubject {
      font-family: 'Segoe UI';
      font-size: small;
      font-weight: 700;
      border: 1px solid #e2e4e7;
      width:15%;
      height:25px;
      text-align:center;
      background-color:#f3f3f3;
    }
    .tableData {
      font-family: 'Segoe UI';
      font-size: small;
      font-weight:normal;
      border: 1px solid #e2e4e7; 
      padding-left:20px;
      width:35%;
    }
    table, tr, td, th, div {
        border-spacing:0;border-collapse:collapse;
    }

    .UpdatePanelStyle {
    width:200px;
    float:left;
    height:30px;
    transform: translate(0px, -10px);
}

 </style>



<div class="demo-container size-custom mtFix" style="width:100%; height:auto">


    <telerik:RadAjaxManagerProxy ID="AjaxManagerProx2" runat="server">
    <AjaxSettings>
        <telerik:AjaxSetting AjaxControlID="ComboUserPolicy">
            <UpdatedControls>           
                <telerik:AjaxUpdatedControl ControlID="ComboUserPolicy" UpdatePanelCssClass="UpdatePanelStyle"/>
                <telerik:AjaxUpdatedControl ControlID="PolicyUserTable" LoadingPanelID="RadAjaxLoadingPanel1"/>
            </UpdatedControls>
        </telerik:AjaxSetting>

        <telerik:AjaxSetting AjaxControlID="ComboParentGroup">
            <UpdatedControls>           
                <telerik:AjaxUpdatedControl ControlID="SaveBtn" />
            </UpdatedControls>
        </telerik:AjaxSetting>

        
    </AjaxSettings>
</telerik:RadAjaxManagerProxy>
<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" skin="Metro" />
   <div class="profileData" style="border: 1px solid threedshadow; padding:15px;  height:225px;">
        
         <telerik:RadTextBox ID="TextGroupID" runat="server" Width="250px" Height="25px" Display="false">
                </telerik:RadTextBox>
       <div  style="width:100%;">
            
            <table style ="float:left; width:90%">
             <tr>
                 
                <td><label for="UPN">UPN</label></td>
                <td><telerik:RadTextBox ID="TextUpnInput" runat="server" Width="265px" Height="25px" DisplayText="메일형식으로 입력(필수입력)">
                </telerik:RadTextBox>
                </td>
                <td><label for="패스워드" style="margin-left:0px;">패스워드/재입력</label></td>
                <td><telerik:RadTextBox ID="TextPassword" runat="server" Width="110px" Height="25px" TextMode="Password" >
                </telerik:RadTextBox>
                <telerik:RadTextBox ID="TextRePassword" runat="server" Width="110px" Height="25px" TextMode="Password"  >
                </telerik:RadTextBox>
            <tr>
     
                <td><label for="성/이름" style="margin-left:0px;">성/이름</label></td>
                 <td><telerik:RadTextBox ID="TextFirsName" runat="server" Width="130px" Height="25px" ></telerik:RadTextBox>
                <telerik:RadTextBox ID="TextUserInput" runat="server" Width="130px" Height="25px" ></telerik:RadTextBox></td>
                <td><label for="사용자명" style="margin-left:0;">표시이름</label></td>
                <td><telerik:RadTextBox ID="TextDisplayName" runat="server" Width="225px" Height="25px" DisplayText="필수입력"></telerik:RadTextBox>
                <td><label for="그룹명" style="margin-left:0;">연락처</label></td>
                <td><telerik:RadTextBox Width="100px" Height="25px" ID="TextTel" runat="server" TextMode="SingleLine" >
                </telerik:RadTextBox></td>
            </tr>
            <tr>               
                <td>
                    <label for="정책명" style="float:left">정책명</label>
                </td>
                <td style="vertical-align:top;">
                    <telerik:RadComboBox ID="ComboUserPolicy" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ComboPolicy_SelectedIndexChanged" OnInit="ComboPolicy_Init"> </telerik:RadComboBox>
                </td>       
                <td>
                    <label for="그룹명" style="margin-left:0px;">소속그룹</label></td>
                <td>
                    <telerik:RadComboBox ID="ComboParentGroup" runat="server" AutoPostBack="true"> </telerik:RadComboBox>         

                </td>
            </tr> 
        </table>
           </div>
            <div style="float:left; width:10%">
         <telerik:RadButton ID="SaveBtn" Text="사용자추가" AutoPostBack="true"  ButtonType="LinkButton" OnClick="SaveBtn_Click"
                runat="server"  ></telerik:RadButton>
                </div>
       
        <div style="width:100%; margin-top:-14px;" class="tablePolicyDetails" >
             <asp:Table runat="server" ID="PolicyUserTable" style="width:100%;  border: 1px solid #e2e4e7; margin:0px; padding:0px; border-spacing:0; border-collapse:collapse;" >
                <asp:TableRow style="width:100%">
                    <asp:TableCell CssClass="tableSubject">
                        접속권한
                    </asp:TableCell>
                    <asp:TableCell CssClass="tableData">
                        <asp:Label runat="server" ID="DetailPermission"> </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell CssClass="tableSubject">
                        해상도
                    </asp:TableCell>
                    <asp:TableCell CssClass="tableData">
                        <asp:Label runat="server" ID="DetailResolution"> </asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow style="width:100%">
                    <asp:TableCell CssClass="tableSubject">
                        사운드
                    </asp:TableCell>
                    <asp:TableCell CssClass="tableData">
                        <asp:Label runat="server" ID="DetailSound"> </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell CssClass="tableSubject">
                        자동업데이트
                    </asp:TableCell>
                    <asp:TableCell CssClass="tableData">
                        <asp:Label runat="server" ID="DetailAutoUpdate"> </asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow style="width:100%">
                    <asp:TableCell CssClass="tableSubject">
                        클립보드
                    </asp:TableCell>
                    <asp:TableCell CssClass="tableData">
                        <asp:Label runat="server" ID="DetailClipboard"> </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell CssClass="tableSubject">
                        드라이브
                    </asp:TableCell>
                    <asp:TableCell CssClass="tableData">
                        <asp:Label runat="server" ID="DetailDrive"> </asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
              
                   <asp:TableRow style="width:100%">
                        <asp:TableCell CssClass="tableSubject">
                            퍼포먼스
                        </asp:TableCell>
                        <asp:TableCell CssClass="tableData" ColumnSpan="3">
                            <asp:Label runat="server" ID="DetailPerformance"> </asp:Label>
                        </asp:TableCell>
                 </asp:TableRow>
            </asp:Table>
        </div>
    </div> 
</div>