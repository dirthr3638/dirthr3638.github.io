<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_ETC_Notice, App_Web_notice.aspx.6975090" %>

<asp:Content ID="NOTICE_PAGE"  runat="Server" ContentPlaceHolderID="Rightcontent">
     <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">공지사항</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>

   <div>
    <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false"/>
     <div id="demo" class="demo-container no-bg">

        <telerik:RadGrid ID="NoticeGrid"  runat="server" ShowStatusBar="true" Width =" 100%"  Skin="Silk"
            AutoGenerateColumns="False" PageSize="30" 
            AllowPaging="True" OnNeedDataSource="NoticeGrid_NeedDataSource"
            >
            <ClientSettings>
                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" TableLayout="Fixed" Name="NoticeTable" CommandItemDisplay="Bottom">
                <PagerStyle Mode="Slider"></PagerStyle>
                <Columns>
                    <telerik:GridBoundColumn DataType="System.Int32" HeaderText="번호" HeaderStyle-HorizontalAlign="Center" DataField ="ID" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        ReadOnly="True" SortExpression="MotelName" UniqueName="PolicyName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="제목"  DataField ="Title" ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="Freight" UniqueName="ClipBoard" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn HeaderText="날짜" SortExpression="Freight" DataType="System.DateTime"  DataField ="CreateDate" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        UniqueName="ShipAddress" HeaderStyle-Width="60" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn HeaderText="조회수" SortExpression="Freight" DataType="System.Int32"  DataField ="hits" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        UniqueName="ShipAddress" HeaderStyle-Width="60" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    </telerik:GridBoundColumn>

                 </Columns>
            </MasterTableView>
      
        </telerik:RadGrid>
        </div>
     </div>  

</asp:Content>