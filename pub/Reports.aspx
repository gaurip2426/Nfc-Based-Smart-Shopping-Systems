<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Smart_Shopping_Cart.Reports" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">





    <telerik:radgrid id="gridReports" runat="server" allowpaging="True" allowsorting="True"
        autogeneratecolumns="false" pagesize="15" allowfilteringbycolumn="true" enableviewstate="true"
        onpageindexchanged="gridCompetitors_PageIndexChanged" onpagesizechanged="gridCompetitors_PageSizeChanged"
        onsortcommand="gridCompetitors_SortCommand" onitemcommand="gridCompetitors_ItemCommand">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView AutoGenerateColumns="false" AllowFilteringByColumn="True" ShowFooter="True"
                TableLayout="Fixed">
                <Columns>
                    <telerik:GridTemplateColumn AllowFiltering="false">
                        <HeaderStyle HorizontalAlign="Center" />
                        <HeaderTemplate>
                            No.</HeaderTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#Container.DataSetIndex+1%>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridBoundColumn DataField="name" EmptyDataText="-" CurrentFilterFunction="Contains"
                        AutoPostBackOnFilter="true" HeaderStyle-HorizontalAlign="Center" HeaderText="Name"
                        ItemStyle-HorizontalAlign="Left" UniqueName="name" ShowFilterIcon="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridTemplateColumn AllowFiltering="false" HeaderText="Rookie?">
                        <ItemStyle HorizontalAlign="Center" Width="20px" />
                        <ItemTemplate>
                            <asp:Image ID="Image1" Height="20px" ImageUrl='<%# Eval("isRookie").Equals(true)?"images/rookie.png":"images/DeleteRed.png" %>'
                                runat="server" />
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridBoundColumn DataField="ukRaceNumber" EmptyDataText="-" HeaderStyle-HorizontalAlign="Center"
                        HeaderText="UK Race #" ItemStyle-HorizontalAlign="Center" ShowFilterIcon="false" 
                        UniqueName="ukRaceNumber" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                    <%--       <HeaderStyle Width="150px" />--%>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="usRaceNumber" EmptyDataText="-" HeaderStyle-HorizontalAlign="Center"
                        HeaderText="US Race #" ItemStyle-HorizontalAlign="Center" ShowFilterIcon="false"
                        UniqueName="usRaceNumber" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="className" EmptyDataText="-" HeaderStyle-HorizontalAlign="Center"
                        HeaderText="Class" ItemStyle-HorizontalAlign="Center" ShowFilterIcon="false"
                        UniqueName="className" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                    </telerik:GridBoundColumn>
                                                        
                    <telerik:GridBoundColumn DataField="make" EmptyDataText="-" HeaderStyle-HorizontalAlign="Center"
                        HeaderText="Manufacturer" ItemStyle-HorizontalAlign="Center" ShowFilterIcon="false"
                        UniqueName="vehicleMake" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="model" EmptyDataText="-" HeaderStyle-HorizontalAlign="Center"
                        HeaderText="Model" ItemStyle-HorizontalAlign="Center" ShowFilterIcon="false"
                        UniqueName="vehicleModel" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="tracker" EmptyDataText="-" HeaderStyle-HorizontalAlign="Center"
                        HeaderText="Tracker ID" ItemStyle-HorizontalAlign="Center" ShowFilterIcon="false"
                        UniqueName="tracker" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                    </telerik:GridBoundColumn>
                    <telerik:GridTemplateColumn AllowFiltering="false">
                        <ItemStyle HorizontalAlign="Center" Width="32px" />
                        <ItemTemplate>
                            <asp:LinkButton href="#modalAssign" ID="tag" role="button" OnClick='<%# String.Format("logID(\"{0}\");", Eval("id")) %>' Visible='<%#Eval("tracker").ToString()=="" ? true:false%>'
                                runat="server" Style="color: #006EA5; height: 32px" data-toggle="modal"><i class="icon-exchange"></i> Assign Tracker</asp:LinkButton>
                            <%--<a href="#modalConfirm" id="tag" role="button" onclick="logID(+'<%# Bind("id") %>'+)" runat="server"  style="color:#006EA5;height:32px" data-toggle="modal"><i
class="icon-exchange"></i></a>--%>
                            <asp:LinkButton ID="tag1" role="button" CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('Do you want to unassign the tracker..?');" CommandName="Unassign"
                                CausesValidation="false" Visible='<%#Eval("tracker").ToString()=="" ? false:true%>' runat="server" Style="color: #006EA5; height: 32px"><i class="icon-exchange"></i> Unassign Tracker</asp:LinkButton>

                                                                
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn AllowFiltering="false">
                        <ItemStyle HorizontalAlign="Center" Width="20px" />
                        <ItemTemplate>
                            <asp:ImageButton ID="btnEdit" ImageUrl="~/images/edit.png" Height="20px" Width="20px"
                                CommandName="Ed" CommandArgument='<%# Bind("id") %>' OnClientClick="function{return true;}"
                                runat="server" />
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn AllowFiltering="false">
                        <ItemStyle HorizontalAlign="Center" Width="20px" />
                        <ItemTemplate>
                            <asp:ImageButton ID="btnDelete" ImageUrl="~/images/delete.png" Height="20px" Width="20px"
                                CommandName="Del" CommandArgument='<%# Bind("id") %>' runat="server" OnClientClick="return confirm('Do you want to delete this record?');" />
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                </Columns>
                <PagerStyle AlwaysVisible="true" />
            </MasterTableView>
        </telerik:radgrid>

</asp:Content>
