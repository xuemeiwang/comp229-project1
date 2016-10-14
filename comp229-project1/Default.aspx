<%@ Page Title="Game" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="comp229_project1.Default" %>

<%-- Name: Xuemei Wang & Qihang Liang --%>
<%-- Student ID: 300853384 & 300771177 --%>
<%-- Date: Oct 4, 2016 --%>
<%-- Default.aspx File --%>
<%-- Website: http://comp229-project1.azurewebsites.net --%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- div class="container" style="font-family: 'Bungee Inline', cursive; font-size:small;" --%>
    <div class="container" style="font-family: hammersmith-one, sans-serif;">
        <div class="table-responsive">
        <table class="table table-condensed">
            <thead hidden="hidden">
                <tr>
                    <th>Game</th>
                    <th>Game</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="success">
                        <asp:GridView ID="GameInfoGridView1" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed"
                            DataKeyNames="GameID" OnRowDeleting="TeamResult1GridView1_RowDeleting">
                            <Columns>
                                <asp:TemplateField HeaderText="Game Information" Visible="true" />
                                <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="true" />
                                <asp:BoundField DataField="WeekNumber" HeaderText="Week" Visible="true" />
                                <asp:TemplateField HeaderText="Total Scores" Visible="true">
                                    <ItemTemplate>
                                        <%# Convert.ToInt32(Eval("TeamScore1")) + Convert.ToInt32(Eval("TeamScore2"))%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Spectator" HeaderText="Spectators" Visible="true" />
                                <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square fa-lg'></i> Edit"
                                    NavigateUrl="~/AddResult.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm"
                                    runat="server" DataNavigateUrlFields="GameID"
                                    DataNavigateUrlFormatString="AddResult.aspx?GameID={0}" />
                                <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-minus-square fa-lg'></i> Delete"
                                    ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamInfo1GridView1" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 1" Visible="true" />
                                <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                                <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamResult1GridView1" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:BoundField DataField="TeamScore1" HeaderText="Total Scored Points" Visible="true" />
                                <asp:BoundField DataField="TeamScore2" HeaderText="Total Allowed Points" Visible="true" />
                                <%--
                                <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="false" />
                                <asp:TemplateField HeaderText="Team 1 Results" Visible="true" />
                                <asp:BoundField DataField="TeamID1" HeaderText="Team ID" Visible="true" />
                                <asp:BoundField DataField="WeekNumber" HeaderText="Week" Visible="true" />
                                <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                                <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                                --%>
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamInfo2GridView1" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 2 Information" Visible="true" />
                                <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                                <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamResult2GridView1" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <%--
                                <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="false" />
                                <asp:TemplateField HeaderText="Team 2 Results" Visible="true" />
                                <asp:BoundField DataField="TeamID2" HeaderText="Team ID" Visible="true" />
                                --%>
                                <asp:BoundField DataField="TeamScore2" HeaderText="Total Scored Points" Visible="true" />
                                <asp:BoundField DataField="TeamScore1" HeaderText="Total Allowed Points" Visible="true" />
                            </Columns>
                        </asp:GridView>
                    </td>

                    <td style="border:none"></td>

                    <td class="info">
                        <asp:GridView ID="GameInfoGridView2" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed"
                            DataKeyNames="GameID" OnRowDeleting="TeamResult1GridView1_RowDeleting">
                            <Columns>
                                <asp:TemplateField HeaderText="Game Information" Visible="true" />
                                <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="true" />
                                <asp:BoundField DataField="WeekNumber" HeaderText="Week" Visible="true" />
                                <asp:TemplateField HeaderText="Total Scores" Visible="true">
                                    <ItemTemplate>
                                        <%# Convert.ToInt32(Eval("TeamScore1")) + Convert.ToInt32(Eval("TeamScore2"))%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Spectator" HeaderText="Spectators" Visible="true" />
                                <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square fa-lg'></i> Edit"
                                    NavigateUrl="~/AddResult.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm"
                                    runat="server" DataNavigateUrlFields="GameID"
                                    DataNavigateUrlFormatString="AddResult.aspx?GameID={0}" />
                                <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-minus-square fa-lg'></i> Delete"
                                    ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamInfo1GridView2" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 1 Information" Visible="true" />
                                <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                                <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamResult1GridView2" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 1 Results" Visible="true" />
                                <asp:BoundField DataField="TeamID1" HeaderText="Team ID" Visible="true" />
                                <asp:BoundField DataField="TeamScore1" HeaderText="Total Scored Points" Visible="true" />
                                <asp:BoundField DataField="TeamScore2" HeaderText="Total Allowed Points" Visible="true" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamInfo2GridView2" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 2 Information" Visible="true" />
                                <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                                <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamResult2GridView2" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 2 Results" Visible="true" />
                                <asp:BoundField DataField="TeamID2" HeaderText="Team ID" Visible="true" />
                                <asp:BoundField DataField="TeamScore2" HeaderText="Total Scored Points" Visible="true" />
                                <asp:BoundField DataField="TeamScore1" HeaderText="Total Allowed Points" Visible="true" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>

                <tr>
                    <td class="danger">
                        <asp:GridView ID="GameInfoGridView3" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed"
                            DataKeyNames="GameID" OnRowDeleting="TeamResult1GridView1_RowDeleting">
                            <Columns>
                                <asp:TemplateField HeaderText="Game Information" Visible="true" />
                                <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="true" />
                                <asp:BoundField DataField="WeekNumber" HeaderText="Week" Visible="true" />
                                <asp:TemplateField HeaderText="Total Scores" Visible="true">
                                    <ItemTemplate>
                                        <%# Convert.ToInt32(Eval("TeamScore1")) + Convert.ToInt32(Eval("TeamScore2"))%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Spectator" HeaderText="Spectators" Visible="true" />
                                <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square fa-lg'></i> Edit"
                                    NavigateUrl="~/AddResult.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm"
                                    runat="server" DataNavigateUrlFields="GameID"
                                    DataNavigateUrlFormatString="AddResult.aspx?GameID={0}" />
                                <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-minus-square fa-lg'></i> Delete"
                                    ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamInfo1GridView3" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 1 Information" Visible="true" />
                                <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                                <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamResult1GridView3" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 1 Results" Visible="true" />
                                <asp:BoundField DataField="TeamID1" HeaderText="Team ID" Visible="true" />
                                <asp:BoundField DataField="TeamScore1" HeaderText="Total Scored Points" Visible="true" />
                                <asp:BoundField DataField="TeamScore2" HeaderText="Total Allowed Points" Visible="true" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamInfo2GridView3" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 2 Information" Visible="true" />
                                <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                                <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamResult2GridView3" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 2 Results" Visible="true" />
                                <asp:BoundField DataField="TeamID2" HeaderText="Team ID" Visible="true" />
                                <asp:BoundField DataField="TeamScore2" HeaderText="Total Scored Points" Visible="true" />
                                <asp:BoundField DataField="TeamScore1" HeaderText="Total Allowed Points" Visible="true" />
                            </Columns>
                        </asp:GridView>
                    </td>

                    <td style="border:none"></td>

                    <td class="warning">
                        <asp:GridView ID="GameInfoGridView4" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed"
                            DataKeyNames="GameID" OnRowDeleting="TeamResult1GridView1_RowDeleting">
                            <Columns>
                                <asp:TemplateField HeaderText="Game Information" Visible="true" />
                                <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="true" />
                                <asp:BoundField DataField="WeekNumber" HeaderText="Week" Visible="true" />
                                <asp:TemplateField HeaderText="Total Scores" Visible="true">
                                    <ItemTemplate>
                                        <%# Convert.ToInt32(Eval("TeamScore1")) + Convert.ToInt32(Eval("TeamScore2"))%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Spectator" HeaderText="Spectators" Visible="true" />
                                <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square fa-lg'></i> Edit"
                                    NavigateUrl="~/AddResult.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm"
                                    runat="server" DataNavigateUrlFields="GameID"
                                    DataNavigateUrlFormatString="AddResult.aspx?GameID={0}" />
                                <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-minus-square fa-lg'></i> Delete"
                                    ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamInfo1GridView4" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 1 Information" Visible="true" />
                                <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                                <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamResult1GridView4" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 1 Results" Visible="true" />
                                <asp:BoundField DataField="TeamID1" HeaderText="Team ID" Visible="true" />
                                <asp:BoundField DataField="TeamScore1" HeaderText="Total Scored Points" Visible="true" />
                                <asp:BoundField DataField="TeamScore2" HeaderText="Total Allowed Points" Visible="true" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamInfo2GridView4" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 2 Information" Visible="true" />
                                <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                                <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="TeamResult2GridView4" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-striped table-hover table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Team 2 Results" Visible="true" />
                                <asp:BoundField DataField="TeamID2" HeaderText="Team ID" Visible="true" />
                                <asp:BoundField DataField="TeamScore2" HeaderText="Total Scored Points" Visible="true" />
                                <asp:BoundField DataField="TeamScore1" HeaderText="Total Allowed Points" Visible="true" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>

                <tr>
                    <td style="text-align:left; border:none">
                        <asp:LinkButton ID="PreviousWeekButton" runat="server" Text="<i class='fa fa-backward fa-lg' aria-hidden='true'></i> Previous Week" CssClass="btn btn-success btn-sm" OnClick="PreviousWeekButton_Click" />
                    </td>
                    <td style="text-align:center; border:none">
                        <a href="AddResult.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus-square fa-lg"></i> Add</a>
                    </td>
                    <td style="text-align:right; border:none">
                        <asp:LinkButton ID="NextWeekButton" runat="server" Text="<i class='fa fa-forward fa-lg' aria-hidden='true'></i> Next Week" CssClass="btn btn-success btn-sm" OnClick="NextWeekButton_Click" />
                    </td>
                </tr>
            </tbody>
        </table>
        </div>
    </div>

</asp:Content>

