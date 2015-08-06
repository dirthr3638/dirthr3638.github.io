<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_PolicyPage, App_Web_policypage.aspx.a1feb0fb" %>

<asp:Content ID="PolicyContent"  runat="Server" ContentPlaceHolderID="Rightcontent">
    
    <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">정책 조회/수정</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>

<%--    <div id="DivBtn" style="width: 1150px; height: 40px; text-align: right">
        <telerik:RadButton ID="ButtonAddPolicy" runat="server" Text="추가"></telerik:RadButton>
        <telerik:RadButton ID="ButtonDeletePolicy" runat="server" Text="삭제"></telerik:RadButton>
    </div>--%>

    <div>

         <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false"/>
    <div id="demo" class="demo-container no-bg">

<%--        <telerik:RadGrid ID="PolicyGrid" runat="server" AllowPaging="True" Culture="ko-KR" Skin="Silk" Width =" 1150px" AutoGenerateColumns="false" PageSize="10"
            OnDeleteCommand="PolicyGrid_DeleteCommand" OnItemDataBound="PolicyGrid_DataBound" OnItemCreated="PolicyGrid_ItemCreated" AllowAutomaticInserts="True"
            AllowAutomaticUpdates="true" ShowStatusBar="true" OnItemInserted="PolicyGrid_ItemInserted">--%>

<telerik:RadGrid ID="PolicyGrid"  runat="server" ShowStatusBar="false" Width =" 100%"  Height="600px" Skin="Silk"
            AutoGenerateColumns="False" PageSize="30" AllowMultiRowSelection="False"
            AllowPaging="True" AllowAutomaticDeletes="True" AllowAutomaticInserts="False"
            AllowAutomaticUpdates="True"  OnNeedDataSource="PolicyGrid_NeedDataSource"
            OnItemCreated="PolicyGrid_ItemCreated">
            <ClientSettings>
                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" TableLayout="Fixed" Name="PolicyTable" CommandItemDisplay="None" HorizontalAlign="Center" >
                <PagerStyle Mode="NextPrevAndNumeric" PageButtonCount="5"></PagerStyle>
                <Columns>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="정책명"  DataField ="ShowPolicyName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="MotelName" UniqueName="PolicyName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center">
                    </telerik:GridBoundColumn> 
                    <telerik:GridTemplateColumn  DataType="System.String" HeaderText="클립보드 접근권한" ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="Freight" UniqueName="ClipBoard" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center">

                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "ShowPolicyClipBoard")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <telerik:RadComboBox runat="server" ID="RadComboBoxClipBoard" DataTextField="ShowPolicyClipBoard"
                                DataValueField="ShowPolicyClipBoard" >
                            </telerik:RadComboBox>
                        </EditItemTemplate>
                    </telerik:GridTemplateColumn>

                    <telerik:GridTemplateColumn  HeaderText="Drive" SortExpression="드라이브 접근권한" DataType="System.String"  DataField ="ShowPolicyDrive" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        UniqueName="ShipAddress" HeaderStyle-Width="60" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                         <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "ShowPolicyDrive")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <telerik:RadComboBox runat="server" ID="RadComboBoxDrive" OnItemsRequested="RadComboBoxDrive_ItemsRequested" OnInit="RadComboBoxDrive_Init">
                            </telerik:RadComboBox>
                        </EditItemTemplate>
                    </telerik:GridTemplateColumn>

                    <telerik:GridButtonColumn ButtonType="ImageButton" UniqueName="DetailButton" HeaderStyle-Width="15" ImageUrl="/images/Detail.png" CommandName="상세보기">
                        
                    </telerik:GridButtonColumn>

                    <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="ModifyButton">
                                        <HeaderStyle Width="15px"></HeaderStyle>
                                        <ItemStyle CssClass="MyImageButton"></ItemStyle>
                    </telerik:GridEditCommandColumn>

                    <telerik:GridButtonColumn ConfirmText="해당 정책을 삭제하시겠습니까?" ConfirmDialogType="RadWindow" HeaderTooltip="Delete"
                        ConfirmTitle="Delete" ButtonType="ImageButton" CommandName="Delete" HeaderStyle-Width="15" />

                 </Columns>

                <EditFormSettings ColumnNumber="2" CaptionDataField="ShowPolicyName" CaptionFormatString="{0} 정책을 수정합니다.">
                    <FormTableItemStyle Wrap="False"></FormTableItemStyle>
                    <FormCaptionStyle CssClass="EditFormHeader"></FormCaptionStyle>
                    <FormMainTableStyle CellPadding="1" CssClass="editTable"
                        Width="100%"></FormMainTableStyle>
                    <FormTableStyle CellPadding="1" CssClass="module" Height="110px"></FormTableStyle>
                    <FormTableAlternatingItemStyle Wrap="False"></FormTableAlternatingItemStyle>
                    <EditColumn ButtonType="ImageButton" InsertText="Insert Order" UpdateText="Update an Order"
                        UniqueName="EditCommandColumn1" CancelText="Cancel edit">
                    </EditColumn>
                    <FormTableButtonRowStyle HorizontalAlign="Right" CssClass="EditFormButtonRow"></FormTableButtonRowStyle>
                </EditFormSettings>
            </MasterTableView>
      
        </telerik:RadGrid>
        </div>
     </div>  

</asp:Content>