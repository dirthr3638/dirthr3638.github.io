<%@ page language="C#" autoeventwireup="true" inherits="View_Page_Login, App_Web_login.aspx.a1feb0fb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="margin:0px">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div style="position:absolute;height:100%;width:100%;">
                  <div id="ImageDiv" style="position:absolute; left:50%; top:50%; height:200px; margin-top:-152px; margin-left:-220.5px;">
                        <img src="../../Images/login_logo.png" style="vertical-align: middle; width:500px">
                    </div>
                </div>
                <div style="position:absolute;bottom:0px;width:100%;">

                    <div style="background-image:url('../../images/index_botbg.png');min-height:168px;margin-top:-4px;" >
                        <table style="margin:auto;margin-top:-8px;">
                            <tr>
                                <td rowspan="3" colspan="3">
                                    <img src="../../images/index_title_login.png" style ="width:100%;padding-bottom:30px;" />
                                </td>
                                <td rowspan="3" colspan="3" style="width:40px;">
                                    <span ></span>
                                </td>
                                <td rowspan="3" colspan="3" style="background-image:url('../../images/index_wbg.png');height:140px">
                                         <table style="padding-left:35px;">
                                        <tr>
                                            <td style="color: white; font-size: 12px;">
                                                <span style="padding-right:5px;">아이디</span>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtID" runat="server" TabIndex="1" Width="140px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: white; font-size: 12px;">
                                                <span style="padding-right:5px;">비밀번호</span>
                                            </td>
                                            <td>
                                                <asp:TextBox TextMode="Password" ID="txtPW" runat="server" TabIndex="2" Width="140px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height:30px;">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="padding-bottom:30px" colspan="2" >
                                    <asp:ImageButton ID="ImageButton1" runat="server" BorderWidth="0px" ImageUrl="../../Images/index_bt_login.png" />
                                </td>
                                </tr>
                        </table>
                        <div>
                            <table style="margin:auto">
                                <tr>
                                    <td style="width:100%;">
                                    </td>
                                </tr>
                            </table>
                        </div>
                </div>
                              
                </div>   
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>