<%@ control language="C#" autoeventwireup="true" inherits="View_Page_User_UserControl_AddGroup, App_Web_addgroup.ascx.28c155c5" %>
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

        margin-top:-15px;
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

 </style>



<div class="demo-container size-custom mtFix" style="width:100%;">
        <telerik:RadAjaxManagerProxy ID="AjaxManagerProx2" runat="server">
    <AjaxSettings>
        <telerik:AjaxSetting AjaxControlID="ComboPolicy">
            <UpdatedControls>           
                <telerik:AjaxUpdatedControl ControlID="PolicyUserTable" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="ComboParentGroup">
            <UpdatedControls>           
                <telerik:AjaxUpdatedControl ControlID="SaveBtn" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="SaveBtn">
            <UpdatedControls>           
                <telerik:AjaxUpdatedControl ControlID="PolicyUserTable" />

            </UpdatedControls>
        </telerik:AjaxSetting>


    </AjaxSettings>
</telerik:RadAjaxManagerProxy>

    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" skin="Metro" />
   <div class="profileData" style="border: 1px solid threedshadow; padding:15px;  height:225px;">
                   <telerik:RadTextBox ID="TextGroupID" runat="server" Width="250px" Height="25px" Display="false">
            </telerik:RadTextBox>
        <div  style="width:100%;">
             <table style ="float:left; width:90%;">
                 <tr>
                    <td>            
                        <label for="그룹명">그룹명</label></td>
                     <td> 
                         <telerik:RadTextBox ID="TextGroupInput" runat="server" Width="160px" Height="25px"></telerik:RadTextBox>
                     </td>
                 </tr>
                 <tr>
                    <td>
                         <label for="정책명" ">정책명</label>
                    </td>
                     <td>
                        <telerik:RadComboBox ID="ComboPolicy" runat="server" OnInit="ComboPolicy_Init" OnSelectedIndexChanged="ComboPolicy_SelectedIndexChanged" AutoPostBack="true"> </telerik:RadComboBox>
                    </td>
                     <td>
                        <label for="그룹명" style="margin-left:0px;">소속그룹</label>

                     </td>        
                     <td>
                         <telerik:RadComboBox ID="ComboParentGroup" runat="server" AutoPostBack="true" > </telerik:RadComboBox>
                    </td>
                 </tr>
          </table>
            <div style="float:left; width:10%">
                <telerik:RadButton ID="SaveBtn" Text="그룹추가" AutoPostBack="true"  ButtonType="LinkButton" OnClick="SaveBtn_Click" CausesValidation="false" 
                    runat="server"></telerik:RadButton>
            </div>

        </div>


        <div style="width:100%; margin-top:-14px;" class="tablePolicyDetails" >

             <asp:Table runat="server" ID="PolicyUserTable" style="width:100%;  border:1px solid #e2e4e7; margin:0px; padding:0px; border-spacing:0; border-collapse:collapse;" >
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
