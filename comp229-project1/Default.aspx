<%@ Page Title="Game" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="comp229_project1.Default" %>
<%-- Name: Xuemei Wang & Qihang Liang --%>
<%-- Student ID: 300853384 & 300771177 --%>
<%-- Date: Oct 4, 2016 --%>
<%-- Default.aspx File --%>
<%-- Website: http://comp229-project1.azurewebsites.net --%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GameInfoGridView1" runat="server" AutoGenerateColumns="false"
        CssClass="table table-bordered table-striped table-hover">
        <Columns>
            <asp:TemplateField HeaderText="Total Scores" Visible="true">
                <ItemTemplate>
                    <%# Convert.ToInt32(Eval("TeamScore1")) + Convert.ToInt32(Eval("TeamScore2"))%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Spectator" HeaderText="Spectators" Visible="true" />
        </Columns>
    </asp:GridView>

    <asp:GridView ID="Team1GridView1" runat="server" AutoGenerateColumns="false"
        CssClass="table table-bordered table-striped table-hover">
        <Columns>
            <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="true" />
            <asp:BoundField DataField="WeekNumber" HeaderText="Week" Visible="true" />
            <asp:BoundField DataField="TeamID1" HeaderText="Team ID" Visible="true" />
            <asp:BoundField DataField="TeamScore1" HeaderText="Team Score" Visible="true" />
            <%-- 
            <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
            <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                --%>
        </Columns>
    </asp:GridView>

    <asp:GridView ID="Team2GridView1" runat="server" AutoGenerateColumns="false"
        CssClass="table table-bordered table-striped table-hover">
        <Columns>
            <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="true" />
            <asp:BoundField DataField="WeekNumber" HeaderText="Week" Visible="true" />
            <asp:BoundField DataField="TeamID2" HeaderText="Team ID" Visible="true" />
            <asp:BoundField DataField="TeamScore2" HeaderText="Team Score" Visible="true" />
            <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
            <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
        </Columns>
    </asp:GridView></asp:Content>

