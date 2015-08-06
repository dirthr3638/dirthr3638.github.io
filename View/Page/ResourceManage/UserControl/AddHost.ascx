<%@ control language="C#" autoeventwireup="true" inherits="View_Page_ResourceManage_UserControl_AddHost, App_Web_addhost.ascx.30ec0645" %>
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
<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" skin="Metro"/>
<div class="profileData" style="border: 1px solid threedshadow; padding:15px;  height:285px;">
    <table style ="float:left; width:90%">
        <tr>
            <td><label for="Host">호스트명</label></td>
            <td><telerik:RadComboBox ID="ComboHostList" runat="server" Width="265px" Height="25px">
            </telerik:RadComboBox>
            </td>
            <td><label for="Group" style="margin-left:0px;">소속그룹</label></td>
            <td><telerik:RadComboBox ID="ComboGroup" runat="server" Width="130px" Height="25px" >
            </telerik:RadComboBox>
        </tr>
    </table>
    <div style="float:left; width:10%">
        <telerik:RadButton ID="SaveBtn" Text="호스트추가" AutoPostBack="true"  ButtonType="LinkButton" OnClick="SaveBtn_Click" runat="server"  ></telerik:RadButton>
    </div>
</div>