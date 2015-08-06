<%@ control language="C#" autoeventwireup="true" inherits="View_Page_VM_UserControl_ReqVMDetail, App_Web_reqvmdetail.ascx.f7ac5e18" %>
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
    <telerik:RadTextBox ID="TextIndex" runat="server" Width="180px" Height="0px" Display="false" >
     </telerik:RadTextBox>
    <table style ="float:left; width:90%">
        <tr>
            <td><label for="Host">VM명</label></td>
            <td><telerik:RadTextBox ID="TextVMName" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox>
            </td>
            <td><label for="Group" style="margin-left:0px;">IP</label></td>
            <td><telerik:RadTextBox ID="TextIP" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Group" style="margin-left:0px;">요청자</label></td>
            <td><telerik:RadTextBox ID="TextRequestMember" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
        </tr>
        <tr>
            <td><label for="Host">UPN</label></td>
            <td><telerik:RadTextBox ID="TextUPN" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox>
            </td>
            <td><label for="서비스플랜" style="margin-left:0px;">서비스플랜</label></td>
            <td><telerik:RadTextBox ID="TextSP" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Group" style="margin-left:0px;">상태정보</label></td>
            <td><telerik:RadTextBox ID="TextStatusDetail" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>
        </tr>
        <tr>
            <td><label for="Host">생성일짜</label></td>
            <td><telerik:RadTextBox ID="TextCreateDate" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox>
            </td>
            <td><label for="Group">업데이트일짜</label></td>
            <td><telerik:RadTextBox ID="TextUpdateDate" runat="server" Width="180px" Height="25px" ReadOnly="true" BackColor="Snow">
            </telerik:RadTextBox></td>

        </tr>
        <tr >
             <td style="padding-top:30px;"><label for="Host">사유</label></td>
            <td colspan="6"  style="padding-top:30px;"><telerik:RadTextBox ID="TextMessage" runat="server" Width="995px" Height="25px"   /></td>
        </tr>
    </table>
    <div style="float:left; width:10%">
        <div>
            <telerik:RadButton ID="SaveBtn" Text="VM 요청승인" AutoPostBack="true"  ButtonType="LinkButton" OnClick="SaveBtn_Click" runat="server"  ></telerik:RadButton>
        </div>
        <div>
        <telerik:RadButton ID="RefuseBtn" Text="VM 요청반려" AutoPostBack="true"  ButtonType="LinkButton" OnClick="RefuseBtn_Click" runat="server"  ></telerik:RadButton>
        </div>
    </div>
</div>