<%@ page language="C#" masterpagefile="~/View/Master/LegatoMainMaster.master" autoeventwireup="true" inherits="View_Page_ResourceManage_VMTemplete, App_Web_vmtemplete.aspx.53e24a53" %>

<%@ Register Src="~/View/Page/ResourceManage/UserControl/AddTemplate.ascx" TagPrefix="AddTemplate" TagName="AddTemplate" %>
<%@ Register Src="~/View/Page/ResourceManage/UserControl/TemplateDetail.ascx" TagPrefix="TemplateDetail" TagName="TemplateDetail" %>


<asp:Content ID="VMTEMPLETE_PAGE"  runat="Server" ContentPlaceHolderID="Rightcontent">


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
            ID: null,
            Name: null,
            OS: null,
//            Language: null,
//            BitType: null,
//            ClientType: null,
            Size: null,
            Path: null,
            StorageType: null,
            FileName: null,
            CreateDate: null,
            ModifyDate: null,

            create: function () {
                var obj = new Object();

                obj.ID = "";
                obj.Name = "";
                obj.OS = "";
//                obj.Language = "";
//                obj.BitType = "";
//                obj.ClientType = "";
                obj.Size = "";
                obj.Path = "";
                obj.StorageType = "";
                obj.FileName = "";
                obj.ModifyDate = "";
                obj.UpdateDate = "";
                return obj;
            }
        };

        function rowSelected(sender, args) {

            
            if ($find("<%# ViewChooser.ClientID %>").get_selectedIndex() != 0)
            {
                $find("<%# ViewChooser.ClientID %>").set_selectedIndex(0);
                var con1 = document.getElementById("HostDetailPanelDiv");
                var con2 = document.getElementById("AddHostPanelDiv");

                con1.style.display = "block";
                con2.style.display = "none";
            }


            var row = getValues(sender, args.get_gridDataItem());
            SetValueHost(row);
        }


        function SetValueHost(RowInfo) {
            ($find("<%# AdminDetailPanel.FindControl("TemplateDetail").FindControl("TextHostName").ClientID %>")).set_value(RowInfo.Name);
            ($find("<%# AdminDetailPanel.FindControl("TemplateDetail").FindControl("TextSize").ClientID %>")).set_value(RowInfo.Size);
            ($find("<%# AdminDetailPanel.FindControl("TemplateDetail").FindControl("TextOS").ClientID %>")).set_value(RowInfo.OS);
            ($find("<%# AdminDetailPanel.FindControl("TemplateDetail").FindControl("TextStoragePath").ClientID %>")).set_value(RowInfo.Path);
            ($find("<%# AdminDetailPanel.FindControl("TemplateDetail").FindControl("TextStorageType").ClientID %>")).set_value(RowInfo.StorageType);
            ($find("<%# AdminDetailPanel.FindControl("TemplateDetail").FindControl("TextFileName").ClientID %>")).set_value(RowInfo.FileName);
            ($find("<%# AdminDetailPanel.FindControl("TemplateDetail").FindControl("TextCreateDate").ClientID %>")).set_value(RowInfo.CreateDate);
            ($find("<%# AdminDetailPanel.FindControl("TemplateDetail").FindControl("TextModifyDate").ClientID %>")).set_value(RowInfo.ModifyDate);

       }

       function getValues(radGrid, item) {
           var newData = RowInfo.create();
           newData.ID = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "TemplateID").innerHTML);
           newData.Name = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Name").innerHTML);
           newData.OS = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "OS").innerHTML);
           newData.Size = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Size").innerHTML);
           newData.Path = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "Path").innerHTML);
           newData.StorageType = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "StorageType").innerHTML);
           newData.FileName = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "FileName").innerHTML);
           newData.CreateDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "CreateDate").innerHTML);
           newData.ModifyDate = (radGrid.get_masterTableView().getCellByColumnUniqueName(item, "ModifyDate").innerHTML);

           return newData;
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

    </script>

    <div id="title" style="width: 100%; height: 40px;">
        <p class="main-title" style="font-weight:600">VM Templete 관리</p>
        <p class="main-title">&nbsp;</p>
        <p class="main-title">&nbsp;</p>
    </div>

    <div style="width:100%; height:580px">
        <telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false" Height="100%"/>
            <div id="demo" class="demo-container no-bg" style="Height:100%">
            <telerik:RadGrid ID="TemplateGrid" runat="server" Width ="100%" Height="100%" Skin="Silk" OnNeedDataSource="TemplateGrid_NeedDataSource"
            EnableViewState="False" SelectedItemStyle-BorderStyle="Solid"  OnDeleteCommand="TemplateGrid_DeleteCommand" >
            <ClientSettings EnableRowHoverStyle="true">
                <Scrolling UseStaticHeaders="True" AllowScroll="true"/>
                <Selecting AllowRowSelect="true" EnableDragToSelectRows="False" UseClientSelectColumnOnly="false" CellSelectionMode="None" />
                <ClientEvents OnRowSelected="rowSelected" ></ClientEvents>
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" Name="HostTable" CommandItemDisplay="None" HorizontalAlign="Center"
                 AlternatingItemStyle-BorderStyle="Solid" TableLayout="Fixed">
                
                <Columns>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="ID"  DataField ="ShowTemplateID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowTemplateID" UniqueName="TemplateID" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="이름"  DataField ="ShowName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowName" UniqueName="Name" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="운영체제"  DataField ="ShowOS" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowOS" UniqueName="OS" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="true">
                    </telerik:GridBoundColumn>
<%--                    <telerik:GridBoundColumn DataType="System.String" HeaderText="언어"  DataField ="ShowLanguage" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowLanguage" UniqueName="Language" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> --%>
<%--                    <telerik:GridBoundColumn DataType="System.String" HeaderText="Bit타입"  DataField ="ShowBitType" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowBitType" UniqueName="BitType" HeaderStyle-Width="40"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> --%>
<%--                    <telerik:GridBoundColumn DataType="System.String" HeaderText="ClientType"  DataField ="ShowClientType" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowClientType" UniqueName="ClientType" HeaderStyle-Width="40"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> --%>
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="용량"  DataField ="ShowSize" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowSize" UniqueName="Size" HeaderStyle-Width="50"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="경로"  DataField ="ShowPath" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowPath" UniqueName="Path" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="Storage"  DataField ="ShowStorageType" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowStorageType" UniqueName="StorageType" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="파일명"  DataField ="ShowFileName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowFileName" UniqueName="FileName" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataType="System.String" HeaderText="생성날짜"  DataField ="ShowCreateDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowCreateDate" UniqueName="CreateDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" >
                    </telerik:GridBoundColumn> 
                        <telerik:GridBoundColumn DataType="System.String" HeaderText="수정날짜"  DataField ="ShowModifyDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Medium"
                        SortExpression="ShowModifyDate" UniqueName="ModifyDate" HeaderStyle-Width="100"  ItemStyle-HorizontalAlign="Center" Display="false">
                    </telerik:GridBoundColumn> 
                    <telerik:GridButtonColumn ConfirmText="해당 Template을 삭제하시겠습니까?" ConfirmDialogType="RadWindow" HeaderTooltip="Delete" UniqueName="DeleteAdmin"
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
                      <telerik:RadTab Text="Template상세/수정" Value="AdminDetail.ascx" ImageUrl="/Images/s.png" Selected="True" />
                      <telerik:RadTab Text="Template추가" Value="AddAdmin.ascx" ImageUrl="/Images/s.png"  />
                   </Tabs>
         </telerik:RadTabStrip>
    </div>
    <div class="content">
        <div class="panelShowCss"; id="HostDetailPanelDiv">
            <asp:Panel runat="server" ID="AdminDetailPanel" Visible="true"> 
                <TemplateDetail:TemplateDetail ID="TemplateDetail" runat="server" Visible="true"/>
            </asp:Panel>
        </div>
        <div class="panelCss" id="AddHostPanelDiv">
            <AddTemplate:AddTemplate ID="AddTemplate" runat="server" Visible="true"  />
        </div>
    </div>
</asp:Content>