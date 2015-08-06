<%@ control language="C#" autoeventwireup="true" inherits="View_Page_VM_UserControl_AddVM, App_Web_addvm.ascx.f7ac5e18" %>
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
        margin-right:0px;
    }        

 </style>
<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" skin="Metro" />
<div class="profileData" style="border: 1px solid threedshadow; padding:15px;  height:155px;">
    <table style ="float:left; width:90%">
        <tr>
            <td><label for="Host">VM명</label></td>
            <td><telerik:RadTextBox ID="TextVMName" runat="server" Width="180px" Height="25px" >
            </telerik:RadTextBox>
            </td>
            <td><label for="Group" style="margin-left:0px;">UPN</label></td>
            <td><telerik:RadTextBox ID="TextIP" runat="server" Width="180px" Height="25px" >
            </telerik:RadTextBox></td>
        </tr>

    </table>
    <div style="float:left; width:10%">
        <telerik:RadButton ID="SaveBtn" Text="VM추가" AutoPostBack="true"  ButtonType="LinkButton" OnClick="SaveBtn_Click" runat="server"  ></telerik:RadButton>
    </div>
</div>