<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_Log_UsedHistoryLog, App_Web_usedhistorylog.aspx.912e22f5" %>

<asp:Content ID="USEDHISTORY_PAGE"  runat="Server" ContentPlaceHolderID="Rightcontent">
    <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">사용이력조회</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>

    <style type="text/css">
        .RadGrid 
    {
    outline : none;
    }


   </style>

         <div style="width:100%; height:780px">
        <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false" Height="100%"/>
            <div id="demo" class="demo-container no-bg" style="Height:100%">
            <telerik:RadGrid ID="WorkLogGrid" runat="server" Width ="100%" Height="100%" Skin="Silk" OnNeedDataSource="WorkLogGrid_NeedDataSource"
            EnableViewState="False" SelectedItemStyle-BorderStyle="Solid" AllowPaging="true">
            <ClientSettings EnableRowHoverStyle="true">
                <Scrolling UseStaticHeaders="True" AllowScroll="true"/>
                <Selecting AllowRowSelect="true" EnableDragToSelectRows="False" UseClientSelectColumnOnly="false" CellSelectionMode="None" />
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" Name="AdminTable" CommandItemDisplay="None" HorizontalAlign="Center"
                 AlternatingItemStyle-BorderStyle="Solid" TableLayout="Fixed" >
                <Columns>
                    <telerik:GridBoundColumn DataType="System.Int32" HeaderText="ID"  DataField ="ShowLogID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowLogID" UniqueName="LogID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 

                    <telerik:GridBoundColumn DataType="System.String" HeaderText="주체"  DataField ="WorkerID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="WorkerID" UniqueName="WorkerID" HeaderStyle-Width="35"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 

                    <telerik:GridBoundColumn DataType="System.String" HeaderText="구분"  DataField ="ShowWork" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowWork" UniqueName="Work" HeaderStyle-Width="40"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 

                    <telerik:GridBoundColumn DataType="System.String" HeaderText="상세"  DataField ="ShowDetail" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowDetail" UniqueName="Detail" HeaderStyle-Width="150"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="날짜"  DataField ="ShowDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowDate" UniqueName="Date" HeaderStyle-Width="50"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                </Columns>
             </MasterTableView>
            </telerik:RadGrid>
          </div>
    </div>
</asp:Content>