﻿<%@ Page Title="Game" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="comp229_project1.Default" %>

<%-- Name: Xuemei Wang & Qihang Liang --%>
<%-- Student ID: 300853384 & 300771177 --%>
<%-- Date: Oct 4, 2016 --%>
<%-- Default.aspx File --%>
<%-- Website: http://comp229-project1.azurewebsites.net --%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-5">
                <h1>Game Information</h1>
                <asp:GridView ID="GameInfoGridView1" runat="server" AutoGenerateColumns="false"
                    CssClass="table table-bordered table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="true" />
                        <asp:BoundField DataField="WeekNumber" HeaderText="Week" Visible="true" />
                        <asp:TemplateField HeaderText="Total Scores" Visible="true">
                            <ItemTemplate>
                                <%# Convert.ToInt32(Eval("TeamScore1")) + Convert.ToInt32(Eval("TeamScore2"))%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Spectator" HeaderText="Spectators" Visible="true" />
                    </Columns>
                </asp:GridView>
                <h1>Team 1 Information</h1>
                <asp:GridView ID="TeamInfo1GridView1" runat="server" AutoGenerateColumns="false"
                    CssClass="table table-bordered table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                        <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                    </Columns>
                </asp:GridView>
                <h1>Team 1 Results</h1>
                <asp:GridView ID="TeamResult1GridView1" runat="server" AutoGenerateColumns="false"
                    CssClass="table table-bordered table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="TeamID1" HeaderText="Team ID" Visible="true" />
                        <asp:BoundField DataField="TeamScore1" HeaderText="Total Scored Points" Visible="true" />
                        <asp:BoundField DataField="TeamScore2" HeaderText="Total Allowed Points" Visible="true" />
                        <%--
                        <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="true" />
                        <asp:BoundField DataField="WeekNumber" HeaderText="Week" Visible="true" />
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                        <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                        --%>
                    </Columns>
                </asp:GridView>
                <h1>Team 2 Information</h1>
                <asp:GridView ID="TeamInfo2GridView1" runat="server" AutoGenerateColumns="false"
                    CssClass="table table-bordered table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                        <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                    </Columns>
                </asp:GridView>
                <h1>Team 2 Results</h1>
                <asp:GridView ID="TeamResult2GridView1" runat="server" AutoGenerateColumns="false"
                    CssClass="table table-bordered table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="TeamID2" HeaderText="Team ID" Visible="true" />
                        <asp:BoundField DataField="TeamScore2" HeaderText="Total Scored Points" Visible="true" />
                        <asp:BoundField DataField="TeamScore1" HeaderText="Total Allowed Points" Visible="true" />
                    </Columns>
                </asp:GridView>
            </div>


            <div class="col-md-offset-6 col-md-5">
                <h1>Game Information</h1>
                <asp:GridView ID="GameInfoGridView2" runat="server" AutoGenerateColumns="false"
                    CssClass="table table-bordered table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="true" />
                        <asp:BoundField DataField="WeekNumber" HeaderText="Week" Visible="true" />
                        <asp:TemplateField HeaderText="Total Scores" Visible="true">
                            <ItemTemplate>
                                <%# Convert.ToInt32(Eval("TeamScore1")) + Convert.ToInt32(Eval("TeamScore2"))%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Spectator" HeaderText="Spectators" Visible="true" />
                    </Columns>
                </asp:GridView>
                <h1>Team 1 Information</h1>
                <asp:GridView ID="TeamInfo1GridView2" runat="server" AutoGenerateColumns="false"
                    CssClass="table table-bordered table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                        <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                    </Columns>
                </asp:GridView>
                <h1>Team 1 Results</h1>
                <asp:GridView ID="TeamResult1GridView2" runat="server" AutoGenerateColumns="false"
                    CssClass="table table-bordered table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="TeamID1" HeaderText="Team ID" Visible="true" />
                        <asp:BoundField DataField="TeamScore1" HeaderText="Total Scored Points" Visible="true" />
                        <asp:BoundField DataField="TeamScore2" HeaderText="Total Allowed Points" Visible="true" />
                    </Columns>
                </asp:GridView>
                <h1>Team 2 Information</h1>
                <asp:GridView ID="TeamInfo2GridView2" runat="server" AutoGenerateColumns="false"
                    CssClass="table table-bordered table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                        <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                    </Columns>
                </asp:GridView>
                <h1>Team 2 Results</h1>
                <asp:GridView ID="TeamResult2GridView2" runat="server" AutoGenerateColumns="false"
                    CssClass="table table-bordered table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="TeamID2" HeaderText="Team ID" Visible="true" />
                        <asp:BoundField DataField="TeamScore2" HeaderText="Total Scored Points" Visible="true" />
                        <asp:BoundField DataField="TeamScore1" HeaderText="Total Allowed Points" Visible="true" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>
    </div>


</asp:Content>

