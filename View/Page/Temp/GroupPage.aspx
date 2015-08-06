<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_GroupPage, App_Web_grouppage.aspx.a1feb0fb" %>

<asp:Content ID="GroupContent"  runat="Server" ContentPlaceHolderID="Rightcontent">
        <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">그룹 조회/수정</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>

    <div>   
    <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false"/>
    <div id="demo" class="demo-container no-bg">

    <telerik:RadGrid ID="GroupGrid"  runat="server" ShowStatusBar="true" Width ="100%"  Skin="Silk"
            AutoGenerateColumns="False" PageSize="30" AllowMultiRowSelection="False"
            AllowPaging="True" AllowAutomaticDeletes="True" AllowAutomaticInserts="True"
            AllowAutomaticUpdates="True"  OnNeedDataSource="GroupGrid_NeedDataSource"
            OnItemInserted="GroupGrid_ItemInserted" OnItemCreated="GroupGrid_ItemCreated" >
            <ClientSettings>
                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" TableLayout="Fixed" Name="PolicyTable" CommandItemDisplay="Bottom">
                <PagerStyle Mode="Slider"></PagerStyle>
                <Columns>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="그룹목록" HeaderStyle-HorizontalAlign="Center" DataField ="ShowGroupName" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        ReadOnly="True" SortExpression="MotelName" UniqueName="GroupName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="정책명" HeaderStyle-HorizontalAlign="Center" DataField ="ShowPolicyName" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        ReadOnly="True" SortExpression="MotelName" UniqueName="PolicyName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="클립보드 접근권한"  DataField ="ShowPolicyClipBoard" ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="Freight" UniqueName="ClipBoard" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn HeaderText="Drive" SortExpression="드라이브 접근권한" DataType="System.String"  DataField ="ShowPolicyDrive" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        UniqueName="ShipAddress" HeaderStyle-Width="60" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    </telerik:GridBoundColumn>

                    <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1">
                                        <HeaderStyle Width="20px"></HeaderStyle>
                                        <ItemStyle CssClass="MyImageButton"></ItemStyle>
                    </telerik:GridEditCommandColumn>

                    <telerik:GridButtonColumn ConfirmText="해당 그룹을 삭제하시겠습니까?" ConfirmDialogType="RadWindow"
                        ConfirmTitle="Delete" ButtonType="ImageButton" CommandName="Delete" HeaderStyle-Width="15" />
                 </Columns>
            </MasterTableView>
      
        </telerik:RadGrid>
        </div>
     </div>  
</asp:Content>