<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="assignment1._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Game Calculator</h1>
        <p class="text-warning">All fields are required.  No ties or draws are allowed.</p>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 col-md-3">
                    <div class="well">
                        <h2>Game 1</h2>
                        <div class="form-group">
                            <label for="rblResult1" class="col-sm-4 control-label">Result:</label>
                            <asp:RadioButtonList ID="rblResult1" CssClass="radio-inline" runat="server">
                                <asp:ListItem Value="1" Text="Win"></asp:ListItem>
                                <asp:ListItem Value="0" Text="Lose"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="rblResult1" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="txtFor1" class="col-sm-4 control-label">Scored: </label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtFor1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtFor1" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Cannot be a negative number" MinimumValue="0" MaximumValue="500" ControlToValidate="txtFor1" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                                <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtAgainst1" ControlToValidate="txtfor1" runat="server" ErrorMessage="No ties, time for a tie-breaker" Operator="NotEqual" Type="Integer" Display="Dynamic"></asp:CompareValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="textAgainst1" class=" col-sm-4 control-label">Against:</label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtAgainst1" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtAgainst1" runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Cannot be a negative number" MinimumValue="1" MaximumValue="500" ControlToValidate="txtAgainst1" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="textSpec1" class=" col-sm-4 control-label">Spectators:</label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtSpec1" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSpec1" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Cannot be a negative number" MinimumValue="1" MaximumValue="500" ControlToValidate="txtSpec1" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 col-md-3">
                    <div class="well">
                        <h2>Game 2</h2>
                        <div class="form-group">
                            <label for="rblResult2" class="col-sm-4 control-label">Result:</label>
                            <asp:RadioButtonList ID="rblResult2" CssClass="radio-inline" runat="server">
                                <asp:ListItem Value="1" Text="Win"></asp:ListItem>
                                <asp:ListItem Value="0" Text="Lose"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="rblResult2" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="txtFor2" class="col-sm-4 control-label">Scored: </label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtFor2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="txtFor2" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="Cannot be a negative number" MinimumValue="0" MaximumValue="500" ControlToValidate="txtFor2" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                                <asp:CompareValidator ID="CompareValidator2" ControlToCompare="txtAgainst2" ControlToValidate="txtFor2" runat="server" ErrorMessage="No ties, time for a tie-breaker" Operator="NotEqual" Type="Integer" Display="Dynamic"></asp:CompareValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txtAgainst2" class=" col-sm-4 control-label">Against:</label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtAgainst2" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtAgainst2" runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="Cannot be a negative number" MinimumValue="1" MaximumValue="500" ControlToValidate="txtAgainst2" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txtSpec2" class=" col-sm-4 control-label">Spectators:</label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtSpec2" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtSpec2" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator6" runat="server" ErrorMessage="Cannot be a negative number" MinimumValue="1" MaximumValue="500" ControlToValidate="txtSpec2" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 col-md-3">
                    <div class="well">
                        <h2>Game 3</h2>
                        <div class="form-group">
                            <label for="rblResult3" class="col-sm-4 control-label">Result:</label>
                            <asp:RadioButtonList ID="rblResult3" CssClass="radio-inline" runat="server">
                                <asp:ListItem Value="1" Text="Win"></asp:ListItem>
                                <asp:ListItem Value="0" Text="Lose"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required" ControlToValidate="rblResult3" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="txtFor3" class="col-sm-4 control-label">Scored: </label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtFor3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Required" ControlToValidate="txtFor3" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator7" runat="server" ErrorMessage="Cannot be a negative number" MinimumValue="0" MaximumValue="500" ControlToValidate="txtFor3" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                                <asp:CompareValidator ID="CompareValidator3" ControlToCompare="txtAgainst3" ControlToValidate="txtFor3" runat="server" ErrorMessage="No ties, time for a tie-breaker" Operator="NotEqual" Type="Integer" Display="Dynamic"></asp:CompareValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txtAgainst3" class=" col-sm-4 control-label">Against:</label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtAgainst3" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txtAgainst3" runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator8" runat="server" ErrorMessage="Cannot be a negative number" MinimumValue="1" MaximumValue="500" ControlToValidate="txtAgainst3" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txtSpec3" class=" col-sm-4 control-label">Spectators:</label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtSpec3" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtSpec3" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator9" runat="server" ErrorMessage="Cannot be a negative number" MinimumValue="1" MaximumValue="500" ControlToValidate="txtSpec3" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 col-md-3">
                    <div class="well">
                        <h2>Game 4</h2>
                        <div class="form-group">
                            <label for="rblResult4" class="col-sm-4 control-label">Result:</label>
                            <asp:RadioButtonList ID="rblResult4" CssClass="radio-inline" runat="server">
                                <asp:ListItem Value="1" Text="Win"></asp:ListItem>
                                <asp:ListItem Value="0" Text="Lose"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Required" ControlToValidate="rblResult4" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="txtFor4" class="col-sm-4 control-label">Scored: </label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtFor4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Required" ControlToValidate="txtFor4" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator10" runat="server" ErrorMessage="Cannot be a negative number" MinimumValue="0" MaximumValue="500" ControlToValidate="txtFor4" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                                <asp:CompareValidator ID="CompareValidator4" ControlToCompare="txtAgainst4" ControlToValidate="txtFor4" runat="server" ErrorMessage="No ties, time for a tie-breaker" Operator="NotEqual" Type="Integer" Display="Dynamic"></asp:CompareValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txtAgainst4" class=" col-sm-4 control-label">Against:</label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtAgainst4" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="txtAgainst4" runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator11" runat="server" ErrorMessage="Cannot be a negative number" MinimumValue="1" MaximumValue="500" ControlToValidate="txtAgainst4" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txtSpec4" class=" col-sm-4 control-label">Spectators:</label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtSpec4" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtSpec4" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator12" runat="server" ErrorMessage="Cannot be a negative number" MinimumValue="1" MaximumValue="500" ControlToValidate="txtSpec4" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="text-center">
        <asp:Button ID="btnSubmit" runat="server" Text="Calculate" Visible="true" CssClass="btn btn-primary" OnClick="btnSubmit_Click1" />
    </div>

    <asp:Panel ID="Panel1" Visible="false" runat="server">
        <div class="well">
            <h1>Results</h1>
            <div class="form-group">
                <asp:Label ID="lblWins" runat="server" Text="Wins: "></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="lblLosses" runat="server" Text="Losses: "></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPercent" runat="server" Text="Winning %: "></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="lblScored" runat="server" Text="Points Scored: "></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="lblAllowed" runat="server" Text="Points Allowed: "></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="lblDifference" runat="server" Text="Point Difference: "></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="lblAttendance" runat="server" Text="Total Attendance: "></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="lblAvg" runat="server" Text="Average number of Spectators"></asp:Label>
            </div>
        </div>
    </asp:Panel>

</asp:Content>
