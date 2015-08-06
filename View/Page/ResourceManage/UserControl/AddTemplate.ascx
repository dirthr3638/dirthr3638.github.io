<%@ control language="C#" autoeventwireup="true" inherits="View_Page_ResourceManage_UserControl_AddTemplate, App_Web_addtemplate.ascx.30ec0645" %>
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
<div class="profileData" style="border: 1px solid threedshadow; padding:15px;  height:125px;">
    <table style ="float:left; width:90%">
        <tr>
            <td><label for="Host">Template명</label></td>
            <td><telerik:RadTextBox ID="TextTemplateName" runat="server" Width="165px" Height="25px"  >
            </telerik:RadTextBox>
            </td>
             <td ><label for="Host">경로</label></td>
            <td colspan="3"><telerik:RadTextBox ID="TextStoragePath" runat="server" Width="250px" Height="25px">
            </telerik:RadTextBox>
            </td>
        </tr>
        <tr style="height:5px">

        </tr>
        <tr>
            <td><label for="Group" style="margin-left:0px;">Host명</label></td>
            <td><telerik:RadComboBox ID="ComboHost" runat="server" Width="130px" >
            </telerik:RadComboBox></td>
        </tr>
        <tr>
            <td><label for="Group" style="margin-left:0px;">Storage타입</label></td>
            <td><telerik:RadComboBox ID="ComboStorageType" runat="server" Width="130px" >
                <Items >
                    <telerik:RadComboBoxItem Text="CSV" />
                    <telerik:RadComboBoxItem Text="SMB" />
                    <telerik:RadComboBoxItem Text="Local" />
                </Items>
            </telerik:RadComboBox>
            </td>
        </tr>
      <%--  String pName, String pComputerName, String pStorageType, String pFilePath, String pOS, String pLanguage, int pBitType, String pClientType--%>
    </table>
    <div style="float:left; width:10%">
        <telerik:RadButton ID="SaveBtn" Text="Template추가" AutoPostBack="true"  ButtonType="LinkButton" OnClick="SaveBtn_Click" runat="server"  ></telerik:RadButton>
    </div>
</div>