<%@ control language="C#" autoeventwireup="true" inherits="View_Page_ResourceManage_UserControl_HostDetal, App_Web_hostdetal.ascx.30ec0645" %>
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
    }        

 </style>

<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" skin="Metro"/>
<div class="profileData" style="border: 1px solid threedshadow; padding:15px;  height:325px;">
    <table style ="float:left; width:90%">
        <tr>
            <td><label for="Host">호스트명</label></td>
            <td><telerik:RadTextBox ID="TextHostName" runat="server" Width="170px" Height="25px" ReadOnly="true">
            </telerik:RadTextBox>
            </td>
            <td><label for="Group" style="margin-left:0px;">소속그룹</label></td>
            <td><telerik:RadComboBox ID="ComboGroup" runat="server" Width="170px" Height="25px" AllowCustomText="true " ToolTip="새그룹 할당을 원하시면, 새 그룹명을 입력후 '그룹수정' 버튼을 눌러주시기 바랍니다.">
            </telerik:RadComboBox>
            <td><label>IP</label></td>
            <td><telerik:RadTextBox ID="TextIP" runat="server" Width="170px" Height="25px" ReadOnly="true"></telerik:RadTextBox></td>
            <td><label for="상태정보">상태</label></td>
            <td><telerik:RadTextBox Width="170px" Height="25px" ID="TextState" runat="server" TextMode="SingleLine" ReadOnly="true"></telerik:RadTextBox></td>   
        </tr>
        <tr>
    
            <td><label for="Host">CPU Core</label></td>
            <td><telerik:RadTextBox ID="RadTextBox1" runat="server" Width="170px" Height="25px" ReadOnly="true">
            </telerik:RadTextBox>
            </td>
            <td><label for="CPU점유율" style="margin-left:0px;">CPU점유율</label></td>
            <td><telerik:RadTextBox ID="RadTextBox2" runat="server" Width="170px" Height="25px" AllowCustomText="true   ">
            </telerik:RadTextBox>
            <td><label>Network UP</label></td>
            <td><telerik:RadTextBox ID="RadTextBox3" runat="server" Width="170px" Height="25px" ReadOnly="true"></telerik:RadTextBox></td>
            <td><label>Network Down</label></td>
            <td><telerik:RadTextBox ID="RadTextBox4" runat="server" Width="170px" Height="25px" ReadOnly="true"></telerik:RadTextBox></td>
        </tr>
        <tr style="height:5px">

        </tr>
        <tr>
    
            <td><label for="Host">생성일짜</label></td>
            <td><telerik:RadTextBox ID="TextCreateDate" runat="server" Width="170px" Height="25px" ReadOnly="true">
            </telerik:RadTextBox>
            </td>
            <td><label for="Group" style="margin-left:0px;">수정일짜</label></td>
            <td><telerik:RadTextBox ID="TextModifyDate" runat="server" Width="170px" Height="25px" AllowCustomText="true   ">
            </telerik:RadTextBox>
            <td><label>업데이트일짜</label></td>
            <td><telerik:RadTextBox ID="TextUpdateDate" runat="server" Width="170px" Height="25px" ReadOnly="true"></telerik:RadTextBox></td>
        </tr>
        <tr>

             <td colspan="4" style="transform:translate(0px, 0px)">
                 <telerik:RadHtmlChart runat="server" ID="ChartMemory" Width="350" Height="180" Transitions="true" Skin="Silk" >
                       <ChartTitle Text="메모리현황">
                        <Appearance Align="Center" Position="Top" >
                            <TextStyle FontSize="13.5" Bold="True" FontFamily="Segoe UI" />
                        </Appearance>
                     </ChartTitle>
                     <Legend>
                        <Appearance Position="Left" Visible="true">
                        </Appearance>
                    </Legend>
                      <PlotArea >
                        <Series >
                            <telerik:PieSeries StartAngle="90" DataFieldY="Data" ColorField="Color" NameField="Name" ExplodeField="IsExploded" >
                                <LabelsAppearance DataFormatString="{0:N0} GB" Step="3"></LabelsAppearance>

                            </telerik:PieSeries>
                        </Series>
                    </PlotArea>
                 </telerik:RadHtmlChart>
            </td>
            <td colspan="4" style="transform:translate(0px, 0px)">
                 <telerik:RadHtmlChart runat="server" ID="ChartDisk" Width="350" Height="180" Transitions="true" Skin="Silk" >
                       <ChartTitle Text="디스크현황">
                        <Appearance Align="Center" Position="Top" >
                            <TextStyle FontSize="13.5" Bold="True" FontFamily="Segoe UI" />
                        </Appearance>
                     </ChartTitle>
                     <Legend>
                        <Appearance Position="Left" Visible="true">
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
    </table>
    <div style="float:left; width:10%">
        <telerik:RadButton ID="SaveBtn" Text="그룹수정" AutoPostBack="true"  ButtonType="LinkButton" OnClick="SaveBtn_Click" runat="server"  ></telerik:RadButton>
    </div>
</div>