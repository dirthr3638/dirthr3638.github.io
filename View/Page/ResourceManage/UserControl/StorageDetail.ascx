<%@ control language="C#" autoeventwireup="true" inherits="View_Page_ResourceManage_UserControl_StorageDetail, App_Web_storagedetail.ascx.30ec0645" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<script type="text/javascript">
     var chart = null;
    function onChartLoad(sender, args) {
    }    

</script>
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
<div class="profileData" style="border: 1px solid threedshadow; padding:15px;  height:225px;">
    <table style ="float:left; width:90%">
        <tr>
            <td><label for="Host">Storage명</label></td>
            <td><telerik:RadTextBox ID="TextStorageName" runat="server" Width="265px" Height="25px">
            </telerik:RadTextBox>
            </td>
            <td><label for="Group" style="margin-left:0px;">소속그룹</label></td>
            <td><telerik:RadComboBox ID="ComboGroup" runat="server" Width="130px" Height="25px" >
            </telerik:RadComboBox>
                
            <td rowspan="5" style="transform:translate(0px, -20px)">
                 <telerik:RadHtmlChart runat="server" ID="ChartSize" Width="350" Height="180" Transitions="true" Skin="Silk" >
                     <ClientEvents OnLoad="onChartLoad" />
                      <ChartTitle Text="현황">
                        <Appearance Align="Center" Position="Top" >
                            <TextStyle FontSize="13.5" Bold="True" FontFamily="Segoe UI" />
                        </Appearance>
                     </ChartTitle>
                     <Legend>
                        <Appearance Position="Right" Visible="true">
                        </Appearance>
                    </Legend>
                      <PlotArea >
                        <Series >
                            <telerik:PieSeries StartAngle="90" DataFieldY="Data" ColorField="Color" NameField="Name" ExplodeField="IsExploded"  >
                                <LabelsAppearance DataFormatString="{0:N0} GB" Step="1"></LabelsAppearance>
                            </telerik:PieSeries>
                        </Series>
                    </PlotArea>
                 </telerik:RadHtmlChart>
            </td>
        </tr>
        <tr>
            <td><label for="Host">경로</label></td>
            <td><telerik:RadTextBox ID="TextStoragePath" runat="server" Width="130px" Height="25px" ReadOnly = "true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Host">타입</label></td>
            <td><telerik:RadTextBox ID="TextType" runat="server" Width="130px" Height="25px" ReadOnly = "true" BackColor="Snow">
            </telerik:RadTextBox></td>
        </tr>
        <tr>
            <td><label for="Host">수정날짜</label></td>
            <td><telerik:RadTextBox ID="TextModifyDay" runat="server" Width="130px" Height="25px" ReadOnly = "true" BackColor="Snow">
            </telerik:RadTextBox>
            <td><label for="Host">업데이트날짜</label></td>
            <td><telerik:RadTextBox ID="TextUpdateDay" runat="server" Width="130px" Height="25px" ReadOnly = "true" BackColor="Snow">
            </telerik:RadTextBox>
        </tr>
        <tr>
            <td><label for="Group" style="margin-left:0px;">상태정보</label></td>
            <td><telerik:RadTextBox ID="TextStatus" runat="server" Width="265px" Height="25px"  ReadOnly = "true" BackColor="Snow">
            </telerik:RadTextBox></td>
            <td><label for="Host">생성날짜</label></td>
            <td><telerik:RadTextBox ID="TextCreateDay" runat="server" Width="130px" Height="25px" ReadOnly = "true" BackColor="Snow">
            </telerik:RadTextBox>
        </tr>
        <tr style="height:20px;">

        </tr>
    </table>
    <div style="float:left; width:10%">
        <telerik:RadButton ID="SaveBtn" Text="Storage수정" AutoPostBack="true"  ButtonType="LinkButton" OnClick="SaveBtn_Click" runat="server"  ></telerik:RadButton>
    </div>
</div>