<%@ control language="C#" autoeventwireup="true" inherits="View_Page_ServicePlan_UserControl_ServicePlanDetail, App_Web_serviceplandetail.ascx.8ae3ee8a" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<style type="text/css">

    label {
        font-family:'Segoe UI';
        font-size:small;
        font-weight:700;
    }
    
     
 </style>
<telerik:RadAjaxManagerProxy ID="AjaxManagerProxy" runat="server">
    <AjaxSettings>
        <telerik:AjaxSetting AjaxControlID="RadioHost">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="ComboHostTarget" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="ComboNIC" LoadingPanelID="RadAjaxLoadingPanel1" />

            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="RadioHostGroup">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="ComboHostTarget" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="ComboNIC" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>

        <telerik:AjaxSetting AjaxControlID="RadioStorage">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="ComboStorageTarget" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="RadioStorageGroup">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="ComboStorageTarget" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>


        <telerik:AjaxSetting AjaxControlID="ComboHostTarget">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="ComboNIC" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>


    </AjaxSettings>
   
</telerik:RadAjaxManagerProxy>
<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Skin="Metro" />
<div class="profileData" style="border: 1px solid threedshadow; padding:15px;  height:325px;">

    <telerik:RadTextBox ID="TextSPID" runat="server" Width="180px" Height="25px" display="false"/>
    <telerik:RadTextBox ID="TextHSID" runat="server" Width="180px" Height="25px" display="false"/>
    <telerik:RadTextBox ID="TextSTID" runat="server" Width="180px" Height="25px" display="false"/>
    <telerik:RadTextBox ID="TextVTID" runat="server" Width="180px" Height="25px" display="false"/>
    <telerik:RadTextBox ID="TextIPID" runat="server" Width="180px" Height="25px" display="false"/>
    <telerik:RadTextBox ID="TextCLID" runat="server" Width="180px" Height="25px" display="false"/>
    
    <table style ="float:left; width:90%">
        <tr >
            <td><label for="Host">호스트지정방식</label></td>
            <td> 
                <telerik:RadButton runat="server" ButtonType="ToggleButton" ToggleType="Radio" ID="RadioHost" Text="직접지정" GroupName="Host" Checked="true"> </telerik:RadButton>
                <telerik:RadButton runat="server" ButtonType="ToggleButton" ToggleType="Radio" ID="RadioHostGroup" Text="그룹지정" GroupName="Host"> </telerik:RadButton>
            </td>
                
            <td><label for="Group" >호스트타겟</label></td>
            <td><telerik:RadComboBox ID="ComboHostTarget" runat="server" Width="160px" Height="25px" OnSelectedIndexChanged="ComboHostTarget_SelectedIndexChanged" OnLoad="ComboHostTarget_Load">
            </telerik:RadComboBox></td>
        </tr>
        <tr>
            <td><label for="Host">스토리지지정방식</label></td>
            <td> 
                <telerik:RadButton runat="server" ButtonType="ToggleButton" ToggleType="Radio" ID="RadioStorage" Text="직접지정" GroupName="Storage" Checked="true"> </telerik:RadButton>
                <telerik:RadButton runat="server" ButtonType="ToggleButton" ToggleType="Radio" ID="RadioStorageGroup" Text="그룹지정" GroupName="Storage"> </telerik:RadButton>
            </td>
            <td><label for="Group">스토리지타겟</label></td>
            <td><telerik:RadComboBox ID="ComboStorageTarget" runat="server" Width="160px">
            </telerik:RadComboBox></td>

        <tr style="height:30px;">

        </tr>
        <tr>
            <td><label for="Host">컬렉션</label></td>
            <td><telerik:RadComboBox ID="ComboCollection" runat="server" Width="160px" >
            </telerik:RadComboBox>
            </td>
            <td><label for="Group" style="margin-left:0px;">템플릿</label></td>
            <td><telerik:RadComboBox ID="ComboTemplate" runat="server" Width="160px" >
            </telerik:RadComboBox></td>
        </tr>
        <tr>

            <td><label for="Host">IPPool</label></td>
            <td><telerik:RadComboBox ID="ComboIPPool" runat="server" Width="160px" >
             </telerik:RadComboBox></td>
            <td><label for="Host">NIC</label></td>
            <td><telerik:RadComboBox ID="ComboNIC" runat="server" Width="160px" >
             </telerik:RadComboBox></td>
            <td style="width:330px">
            </td>
        </tr>
        <tr style="height:40px">

        </tr>
        <tr>
            <td><label for="Host">CPU </label></td>
            <td colspan="7">
            <telerik:RadSlider runat="server" ID="CPUSlider" Orientation="Horizontal" 
                Width="900px" Height="50px" ItemType="Tick" SmallChange="1" LargeChange="1" IsSelectionRangeEnabled="false"
                SelectionStart="1" SelectionEnd="4" MaximumValue="8" MinimumValue="1" TrackPosition="BottomRight" Skin="Bootstrap" RenderMode="Mobile" SelectedRegionStartValue="1" Value="1" />
            </td>
            <td>
                <telerik:RadTextBox runat="server" ID="TextCPUValue" Width="90px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr style="height:10px"></tr>
        <tr>
            <td><label for="Meomory">메모리</label></td>
            <td colspan="7">
                <telerik:RadSlider runat="server" ID="MemorySlider" Orientation="Horizontal" 
                Width="900px" Height="50px" ItemType="Tick" SmallChange="512" LargeChange="1024" IsSelectionRangeEnabled="false"
              MaximumValue="16384" MinimumValue="0" TrackPosition="BottomRight" Skin="Bootstrap" RenderMode="Mobile" />
            </td>
            <td>
                <telerik:RadTextBox runat="server" ID="TextMemoryValue" Width="90px"></telerik:RadTextBox>
            </td>
        </tr>
    </table>
    <div style="float:left; width:10%">
        <telerik:RadButton ID="SaveBtn" Text="서비스플랜 수정" AutoPostBack="true"  ButtonType="LinkButton" OnClick="SaveBtn_Click" runat="server"  ></telerik:RadButton>
    </div>
</div>