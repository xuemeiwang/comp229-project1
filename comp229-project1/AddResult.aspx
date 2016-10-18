<%@ Page Title="Add Game Result" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddResult.aspx.cs" Inherits="comp229_project1.AddResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Game Details</h1>
                <h5>All Fields are required</h5>
                <br />

                <div class="form-group">
                    <label class="control-label" for="GameWeekTextBox">Game Week</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="GameWeekTextBox"
                        placeholder="Game Week" required="true" type="number" min="1" max="52" ></asp:TextBox>
                </div>

                <div class="form-group">
                    <label class="control-label" for="GameIDTextBox">Game ID</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="GameIDTextBox"
                        placeholder="Game ID" required="true" type="number" min="1" max="4" ></asp:TextBox>
                </div>

                <div class="form-group">
                    <%--
                    <asp:Label runat="server" CssClass="control-label" for="Team1ScoreTextBox">Team 1 Score</asp:Label>
                    --%>
                    <label class="control-label" for="Team1ScoreTextBox">Team 1 Score</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="Team1ScoreTextBox"
                        placeholder="Team 1 Score" required="true" type="number" min="0" max="1000" ></asp:TextBox>
                </div>

                <div class="form-group">
                    <%--
                    <asp:Label runat="server" CssClass="control-label" for="Team2ScoreTextBox">Team 2 Score</asp:Label>
                    --%>
                    <label class="control-label" for="Team2ScoreTextBox">Team 2 Score</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="Team2ScoreTextBox"
                        placeholder="Team 2 Score" required="true" type="number" min="0" max="1000" ></asp:TextBox>
                </div>

                <div class="form-group">
                    <label class="control-label" for="SpectatorTextBox">Spectators</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="SpectatorTextBox"
                        placeholder="Spectators" required="true" type="number" min="0" max="100000" ></asp:TextBox>
                </div>

                <div class="text-right">
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server"
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                    <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-success btn-lg" runat="server"
                        OnClick="SaveButton_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
