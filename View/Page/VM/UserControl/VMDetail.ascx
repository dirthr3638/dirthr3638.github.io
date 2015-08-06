<%@ control language="C#" autoeventwireup="true" inherits="View_Page_VM_UserControl_VMDetail, App_Web_vmdetail.ascx.f7ac5e18" %>
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
    <table style ="width:100%">
        <tr>
            <td><label for="Host">VM명</label></td>
            <td><telerik:RadTextBox ID="TextVMName" runat="server" Width="180px" Height="25px" ReadOnly="true">
            </telerik:RadTextBox>
            </td>
            <td><label for="Group" style="margin-left:0px;">IP</label></td>
            <td><telerik:RadTextBox ID="TextIP" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Host">호스트명</label></td>
            <td><telerik:RadTextBox ID="TextHostName" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>

        </tr>
        <tr>
            <td><label for="Host">UPN</label></td>
            <td><telerik:RadTextBox ID="TextUPN" runat="server" Width="180px" Height="25px" ReadOnly="true"  BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Host">컬렉션명</label></td>
            <td><telerik:RadTextBox ID="TextCollectionName" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Group" style="margin-left:0px;">템플릿명</label></td>
            <td colspan="3"><telerik:RadTextBox ID="TextTemplateName" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
        </tr>
        <tr>
            <td><label for="Host">운영체제</label></td>
            <td><telerik:RadTextBox ID="TextOS" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Host">상태설명</label></td>
            <td><telerik:RadTextBox ID="TextStatusDetail" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Host">VM상태설명</label></td>
            <td><telerik:RadTextBox ID="TexVMStatusDetail" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
        </tr>
        <tr>
            <td><label for="Host">생성날짜</label></td>
            <td><telerik:RadTextBox ID="TextCreateDate" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Host">수정날짜</label></td>
            <td><telerik:RadTextBox ID="TextModifyDate" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Host">업데이트날짜</label></td>
            <td><telerik:RadTextBox ID="TextUpdateDate" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
        </tr>
        <tr>
            <td><label for="Host">VM업데이트날짜</label></td>
            <td><telerik:RadTextBox ID="TextVMUpdateDate" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Host">VM상태변경날짜</label></td>
            <td><telerik:RadTextBox ID="TextVMModifyDate" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Host">Storage경로</label></td>
            <td><telerik:RadTextBox ID="TextStoragePath" runat="server" Width="180px" Height="25px" ReadOnly="true"  BackColor="Snow">
            </telerik:RadTextBox></td>
        </tr>
    </table>
</div>