<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_ResourceManage_IPPool, App_Web_ippool.aspx.53e24a53" %>

<%@ Register Src="~/View/Page/ResourceManage/UserControl/AddIPPool.ascx" TagPrefix="AddIPPool" TagName="AddIPPool" %>
<%@ Register Src="~/View/Page/ResourceManage/UserControl/IPPoolDetail.ascx" TagPrefix="IPPoolDetail" TagName="IPPoolDetail" %>

<asp:Content ID="IPPOOL_PAGE"  runat="Server" ContentPlaceHolderID="Rightcontent">
    <style type="text/css">
    .panelCss 
    {
      
        display:none;
    }
    .panelShowCss 
    {
        display:block
    }
        .RadGrid 
    {
    outline : none;
    }
   </style>
    <script type="text/javascript">

        var RowInfo =
        {
            IPID: null,
            Name: null,
            IPStart: null,
            IPEnd: null,
            Subnet: null,
            Gateway: null,
            DNS1: null,
            DNS2: null,
            VLAN: null,
            CreateDate: null,
            ModifyDate: null,

            create: function () {
                var obj = new Object();

                obj.IPID = "";
                obj.Name = "";
                obj.IPStart = "";
                obj.IPEnd = "";
                obj.Subnet = "";
                obj.Gateway = "";
                obj.DNS1 = "";
                obj.DNS2 = "";
                obj.VLAN = "";
                obj.CreateDate = "";
                obj.ModifyDate = "";
                return obj;
            }
        };

        function SetValueIPPool(RowInfo) {
            ($find("<%# AdminDetailPanel.FindControl("IPPoolDetail").FindControl("TextIPPoolID").ClientID %>")).set_value(RowInfo.IPID);
            ($find("<%# AdminDetailPanel.FindControl("IPPoolDetail").FindControl("TextIPPoolName").ClientID %>")).set_value(RowInfo.Name);
            ($find("<%# AdminDetailPanel.FindControl("IPPoolDetail").FindControl("TextSubNet").ClientID %>")).set_value(RowInfo.Subnet);
            ($find("<%# AdminDetailPanel.FindControl("IPPoolDetail").FindControl("TextStartIP").ClientID %>")).set_value(RowInfo.IPStart);
            ($find("<%# AdminDetailPanel.FindControl("IPPoolDetail").FindControl("TextEndIP").ClientID %>")).set_value(RowInfo.IPEnd);

            ($find("<%# AdminDetailPanel.FindControl("IPPoolDetail").FindControl("TextGateWay").ClientID %>")).set_value(RowInfo.Gateway);
            ($find("<%# AdminDetailPanel.FindControl("IPPoolDetail").FindControl("TextDNS1").ClientID %>")).set_value(RowInfo.DNS1);
            ($find("<%# AdminDetailPanel.FindControl("IPPoolDetail").FindControl("TextDNS2").ClientID %>")).set_value(RowInfo.DNS2);
            ($find("<%# AdminDetailPanel.FindControl("IPPoolDetail").FindControl("TextVLAN").ClientID %>")).set_value(RowInfo.VLAN);
            ($find("<%# AdminDetailPanel.FindControl("IPPoolDetail").FindControl("TextCreateDate").ClientID %>")).set_value(RowInfo.CreateDate);
            ($find("<%# AdminDetailPanel.FindControl("IPPoolDetail").FindControl("TextModifyDate").ClientID %>")).set_value(RowInfo.ModifyDate);
        }

        function rowSelected(sender, args) {
            if ($find("<%# ViewChooser.ClientID %>").get_selectedIndex() != 0) {
                $find("<%# ViewChooser.ClientID %>").set_selectedIndex(0);
                var con1 = document.getElementById("HostDetailPanelDiv");
                var con2 = document.getElementById("AddHostPanelDiv");

                con1.style.display = "block";
                con2.style.display = "none";
            }

            var row = getValues(sender, args.get_gridDataItem());
            SetValueIPPool(row);
        }

        function tabSelected(sender, args) {
            if (sender.get_selectedIndex() == 0) {
                var con1 = document.getElementById("HostDetailPanelDiv");
                con1.style.display = "block";
                var con2 = document.getElementById("AddHostPanelDiv");
                con2.style.display = "none";
            }
            else if (sender.get_selectedIndex() == 1) {
                var con1 = document.getElementById("HostDetailPanelDiv");
                con1.style.display = "none";
                var con2 = document.getElementById("AddHostPanelDiv");
                con2.style.display = "block";
            }
        }

        function getValues(radGrid, item) {
            var newData = RowInfo.create();
            newData.IPID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "IPPoolID").innerHTML);
            newData.Name = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Name").innerHTML);
            newData.IPStart = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "IPStart").innerHTML);
            newData.IPEnd = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "IPEnd").innerHTML);
            newData.Subnet = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "SubNet").innerHTML);
            newData.Gateway = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Gateway").innerHTML);
            newData.DNS1 = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "DNS").innerHTML);
            newData.DNS2 = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "DNS2").innerHTML);
            newData.VLAN = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "VLAN").innerHTML);
            newData.CreateDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CreateDate").innerHTML);
            newData.ModifyDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "ModifyDate").innerHTML);

            return newData;
        }
    </script>

    <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">IPPool관리</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>

    <div style="width:100%; height:580px">
        <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false" Height="100%"/>
            <div id="demo" class="demo-container no-bg" style="Height:100%">
            <telerik:RadGrid ID="IPPoolGrid" runat="server" Width ="100%" Height="100%" Skin="Silk" OnNeedDataSource="IPPoolGrid_NeedDataSource"
            EnableViewState="False" SelectedItemStyle-BorderStyle="Solid"  OnDeleteCommand="IPPoolGrid_DeleteCommand" >
            <ClientSettings EnableRowHoverStyle="true">
                <Scrolling UseStaticHeaders="True" AllowScroll="true"/>
                <Selecting AllowRowSelect="true" EnableDragToSelectRows="False" UseClientSelectColumnOnly="false" CellSelectionMode="None" />
                <ClientEvents OnRowSelected="rowSelected" ></ClientEvents>
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" Name="HostTable" CommandItemDisplay="None" HorizontalAlign="Center"
                 AlternatingItemStyle-BorderStyle="Solid" TableLayout="Fixed">
                
                <Columns>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="ID"  DataField ="ShowIPID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowIPID" UniqueName="IPPoolID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="이름"  DataField ="ShowName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowName" UniqueName="Name" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="시작IP"  DataField ="ShowIPStart" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowIPStart" UniqueName="IPStart" HeaderStyle-Width="50"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="종료IP"  DataField ="ShowIPEnd" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowIPEnd" UniqueName="IPEnd" HeaderStyle-Width="50"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="서브넷"  DataField ="ShowSubnet" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowSubnet" UniqueName="SubNet" HeaderStyle-Width="40"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="게이트웨이"  DataField ="ShowGateway" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowGateway" UniqueName="Gateway" HeaderStyle-Width="50"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="DNS"  DataField ="ShowDNS1" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowUsingSpace" UniqueName="DNS" HeaderStyle-Width="50"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="보조DNS"  DataField ="ShowDNS2" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowDNS2" UniqueName="DNS2" HeaderStyle-Width="50"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="VLAN"  DataField ="ShowVLAN" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowVLAN" UniqueName="VLAN" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="생성날짜"  DataField ="ShowCreateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowCreateDate" UniqueName="CreateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="수정날짜"  DataField ="ShowModifyDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowModifyDate" UniqueName="ModifyDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
 
                    <telerik:GridButtonColumn ConfirmText="해당 IPPool을 삭제하시겠습니까?" ConfirmDialogType="RadWindow" HeaderTooltip="Delete" UniqueName="DeleteStorage"
                        ConfirmTitle="Delete" ButtonType="ImageButton" CommandName="Delete" HeaderStyle-Width="15" />
                    </Columns>
                 </MasterTableView>
            </telerik:RadGrid>
          </div>
    </div>
    <div style="background-color:#afb3b7; border-radius:3px; background-image:-webkit-linear-gradient(top,#ced2d6 0,#afb3b7 100%)">
        <telerik:RadTabStrip ID="ViewChooser" Skin="Silk" Style="margin-top: 0px;"   EnableViewState="false" 
                SelectedIndex="0" runat="server" OnClientTabSelected="tabSelected">
                   <Tabs >
                      <telerik:RadTab Text="IPPool상세/수정" Value="AdminDetail.ascx" ImageUrl="/Images/s.png" Selected="True" />
                      <telerik:RadTab Text="IPPool추가" Value="AddAdmin.ascx" ImageUrl="/Images/s.png"  />
                   </Tabs>
         </telerik:RadTabStrip>
    </div>
    <div class="content">
        <div class="panelShowCss"; id="HostDetailPanelDiv">
            <asp:Panel runat="server" ID="AdminDetailPanel" Visible="true"> 
                <IPPoolDetail:IPPoolDetail ID="IPPoolDetail" runat="server" Visible="true"/>
            </asp:Panel>
        </div>
        <div class="panelCss" id="AddHostPanelDiv">
            <AddIPPool:AddIPPool ID="AddIPPool" runat="server" Visible="true"  />
        </div>
    </div>




</asp:Content>