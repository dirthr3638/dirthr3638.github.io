<%@ control language="C#" autoeventwireup="true" inherits="View_Page_ResourceManage_UserControl_TemplateDetail, App_Web_templatedetail.ascx.30ec0645" %>
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
<div class="profileData" style="border: 1px solid threedshadow; padding:15px;  height:125px;">
    <table style ="float:left; width:90%">
        <tr>
            <td><label for="Host">Template명</label></td>
            <td><telerik:RadTextBox ID="TextHostName" runat="server" Width="130px" Height="25px">
            </telerik:RadTextBox>
            </td>
            <td><label for="Group" style="margin-left:0px;">운영체제</label></td>
            <td><telerik:RadTextBox ID="TextOS" runat="server" Width="230px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox>            
                <td><label for="Host">StorageType</label></td>
            <td><telerik:RadTextBox ID="TextStorageType" runat="server" Width="230px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>

        </tr>
        <tr>
            <td><label for="Host">경로</label></td>
            <td><telerik:RadTextBox ID="TextStoragePath" runat="server" Width="130px" Height="25px" ReadOnly="true"  BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Host">파일명</label></td>
            <td><telerik:RadTextBox ID="TextFileName" runat="server" Width="230px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Group" style="margin-left:0px;">상태정보</label></td>
            <td colspan="3"><telerik:RadTextBox ID="TextStatus" runat="server" Width="370px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>


        </tr>
        <tr>
            <td><label for="Host">사이즈</label></td>
            <td><telerik:RadTextBox ID="TextSize" runat="server" Width="130px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Host">생성날짜</label></td>
            <td><telerik:RadTextBox ID="TextCreateDate" runat="server" Width="230px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Host">수정날짜</label></td>
            <td><telerik:RadTextBox ID="TextModifyDate" runat="server" Width="230px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>

        </tr>
    </table>
    <div style="float:left; width:10%">
        <telerik:RadButton ID="SaveBtn" Text="Template수정" AutoPostBack="true"  ButtonType="LinkButton" OnClick="SaveBtn_Click" runat="server"  ></telerik:RadButton>
    </div>
</div>