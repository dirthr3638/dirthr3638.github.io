<%@ control language="C#" autoeventwireup="true" inherits="View_Page_ResourceManage_UserControl_AddStorage, App_Web_addstorage.ascx.30ec0645" %>
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

        margin-top:6px;
    }

    .RadComboBox 
    {
        transform:translate(0px, -8px);
        margin-right:36px;
    }        

 </style>
<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" skin="Metro"/>
<div class="profileData" style="border: 1px solid threedshadow; padding:15px;  height:225px;">
    <table style ="float:left; width:90%">
        <tr>
            <td><label for="Host">Storage명</label></td>
            <td><telerik:RadTextBox ID="TextHostName" runat="server" Width="200px" Height="25px">
            </telerik:RadTextBox>
            </td>
                        
            <td><label for="Group" style="margin-left:0px;">경로</label></td>
            <td style="width:201px"><telerik:RadTextBox ID="RadComboBox2" runat="server" Width="200px" Height="25px" ></telerik:RadTextBox></td>
            <td><telerik:RadButton ID="BTNPathConfirm" runat="server" Text="경로적용" ButtonType="LinkButton"></telerik:RadButton></td>
        </tr>
        <tr>
            <td><label for="Group" style="margin-left:0px;">Host명</label></td>
            <td><telerik:RadComboBox ID="ComboGroup" runat="server" Width="130px" Height="25px" >
            </telerik:RadComboBox> </td>

             <td><label for="Group" style="margin-left:0px;">타입</label></td>
            <td><telerik:RadComboBox ID="ComboType" runat="server" Width="130px" >
                <Items >
                    <telerik:RadComboBoxItem Text="CSV" />
                    <telerik:RadComboBoxItem Text="SMB" />
                    <telerik:RadComboBoxItem Text="Local" />
                </Items>
            </telerik:RadComboBox>
            </td>

        </tr>
        <%--//String pName, String pComputerName, String pType, String pPath--%>
    </table>
    <div style="float:left; width:10%">
        <telerik:RadButton ID="SaveBtn" Text="Storage추가" AutoPostBack="true"  ButtonType="LinkButton" OnClick="SaveBtn_Click" runat="server"  ></telerik:RadButton>
    </div>
</div>