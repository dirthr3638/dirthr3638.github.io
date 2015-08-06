<%@ control language="C#" autoeventwireup="true" inherits="View_Page_User_UserControl_AddAdmin, App_Web_addadmin.ascx.28c155c5" %>
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

 </style>
<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" skin="Metro" />
<div class="profileData" style="border: 1px solid threedshadow; padding:15px;  height:125px;">
    <table style ="float:left; width:90%">
        <tr>
            <td><label for="ID">ID</label></td>
            <td><telerik:RadTextBox ID="TextAdminID" runat="server" Width="265px" Height="25px">
            </telerik:RadTextBox>
            </td>
            <td><label for="패스워드" style="margin-left:0px;">패스워드/재입력</label></td>
            <td><telerik:RadTextBox ID="TextPassword" runat="server" Width="130px" Height="25px" TextMode="Password" >
            </telerik:RadTextBox>
            <telerik:RadTextBox ID="TextRePassword" runat="server" Width="130px" Height="25px" TextMode="Password"  >
            </telerik:RadTextBox>
        </tr>
        <tr>
            <td><label>성/이름</label></td>
            <td><telerik:RadTextBox ID="TextFirsName" runat="server" Width="130px" Height="25px" ></telerik:RadTextBox>
            <telerik:RadTextBox ID="TextLastName" runat="server" Width="130px" Height="25px" ></telerik:RadTextBox></td>
            <td><label for="표시이름" style="margin-left:0;">표시이름</label></td>
            <td><telerik:RadTextBox Width="255px" Height="25px" ID="TextDisplayName" runat="server" TextMode="SingleLine"></telerik:RadTextBox></td>
            <td><label for="그룹명" style="margin-left:0;">연락처</label></td>
            <td><telerik:RadTextBox Width="255px" Height="25px" ID="TextPhone" runat="server" TextMode="SingleLine"></telerik:RadTextBox></td>
        </tr>
    </table>
    <div style="float:left; width:10%">
        <telerik:RadButton ID="SaveBtn" Text="관리자추가" AutoPostBack="true"  ButtonType="LinkButton" OnClick="SaveBtn_Click" runat="server"  ></telerik:RadButton>
    </div>
</div>