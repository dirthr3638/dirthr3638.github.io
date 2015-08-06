<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_UserPage, App_Web_userpage.aspx.a1feb0fb" %>

<asp:Content ID="UserContent"  runat="Server" ContentPlaceHolderID="Rightcontent">
        <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">사용자 조회/수정</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>
    <div id="DivBtn" style="width: 1150px; height: 40px; text-align: right">
        <telerik:RadButton ID="ButtonAddGroup" runat="server" Text="Import"></telerik:RadButton>
    </div>
    <div>    
    <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false"/>
    <div id="demo" class="demo-container no-bg">

    <telerik:RadGrid ID="UserGrid"  runat="server" ShowStatusBar="true" Width =" 100%"  Skin="Silk"
            AutoGenerateColumns="False" PageSize="30" AllowMultiRowSelection="False"
            AllowPaging="True" AllowAutomaticDeletes="True"
             OnNeedDataSource="UserGrid_NeedDataSource"
             >
            <ClientSettings>
                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" TableLayout="Fixed" Name="PolicyTable" CommandItemDisplay="Bottom">
                <PagerStyle Mode="Slider"></PagerStyle>
                <Columns>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="UPN" HeaderStyle-HorizontalAlign="Center" DataField ="ShowUpn" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        ReadOnly="True" SortExpression="MotelName" UniqueName="UpnName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="사용자명" HeaderStyle-HorizontalAlign="Center" DataField ="ShowUserName" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        ReadOnly="True" SortExpression="MotelName" UniqueName="UserName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center">
                    </telerik:GridBoundColumn> 

                    <telerik:GridBoundColumn DataType="System.String" HeaderText="클립보드 접근권한"  DataField ="ShowPolicyClipBoard" ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="Freight" UniqueName="ClipBoard" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="드라이브 접근권한"  DataField ="ShowPolicyDrive" ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="Freight" UniqueName="Drive" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center">
                    </telerik:GridBoundColumn>

                    <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1">
                                        <HeaderStyle Width="20px"></HeaderStyle>
                                        <ItemStyle CssClass="MyImageButton"></ItemStyle>
                    </telerik:GridEditCommandColumn>

                    <telerik:GridButtonColumn ConfirmText="해당 사용자를 삭제하시겠습니까?" ConfirmDialogType="RadWindow"
                        ConfirmTitle="Delete" ButtonType="ImageButton" CommandName="Delete" HeaderStyle-Width="15" />
                 </Columns>
            </MasterTableView>
      
        </telerik:RadGrid>
        </div>
     </div>  
</asp:Content>