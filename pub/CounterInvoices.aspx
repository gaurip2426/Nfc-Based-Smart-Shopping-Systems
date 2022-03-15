<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master" CodeBehind="CounterInvoices.aspx.cs" Inherits="Smart_Shopping_Cart.CounterInvoices" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->

    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">
                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="pull-left page-title">All Invoices</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">Home</a></li>
                            <li class="active">Dashboard</li>
                        </ol>
                    </div>
                </div>
                <!-- Start Widget -->
                <!--Widget-4 -->
                <style>
                    .left tr {
                        float: left;
                    }

                    .left td {
                        width: 200px;
                    }
                </style>
                <div class="row">                   
                    <asp:ScriptManager runat="server"></asp:ScriptManager>
                    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel2" runat="server" Skin="Default">
                    </telerik:RadAjaxLoadingPanel>
                    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" LoadingPanelID="RadAjaxLoadingPanel2">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <telerik:RadGrid ID="gridInvoice" runat="server" AllowPaging="True"
                                    AllowSorting="True" AutoGenerateColumns="False" PageSize="50" Width="100%" AllowFilteringByColumn="True"                                   
                                    CellSpacing="0" GridLines="None">
                                    <GroupingSettings CaseSensitive="false" />
                                    <MasterTableView DataKeyNames="Id">
                                        <Columns>                                            
                                            <telerik:GridBoundColumn DataField="Id" HeaderStyle-HorizontalAlign="Left"
                                                HeaderText="Invoice Id" ItemStyle-HorizontalAlign="Left" ShowFilterIcon="true"
                                                UniqueName="Id" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="CartName" HeaderStyle-HorizontalAlign="Left"
                                                HeaderText="Cart Name" ItemStyle-HorizontalAlign="Left" ShowFilterIcon="true"
                                                UniqueName="CartName" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                                            </telerik:GridBoundColumn>
                                          
                                             <telerik:GridBoundColumn DataField="AmountPaid" HeaderStyle-HorizontalAlign="Left"
                                                HeaderText="AmountPaid" ItemStyle-HorizontalAlign="Left" ShowFilterIcon="true"
                                                UniqueName="AmountPaid" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                                            </telerik:GridBoundColumn>
                                          
                                            <telerik:GridBoundColumn DataField="TimeGenerated" HeaderStyle-HorizontalAlign="Left"
                                                HeaderText="Time Generated" ItemStyle-HorizontalAlign="Left" ShowFilterIcon="true"
                                                UniqueName="TimeGenerated" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                                            </telerik:GridBoundColumn>

                                            <telerik:GridBoundColumn DataField="TimePaid" HeaderStyle-HorizontalAlign="Left"
                                                HeaderText="TimePaid" ItemStyle-HorizontalAlign="Left" ShowFilterIcon="true"
                                                UniqueName="TimePaid" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                                            </telerik:GridBoundColumn>
                                            
                                        </Columns>
                                        <PagerStyle AlwaysVisible="true" />
                                    </MasterTableView>
                                </telerik:RadGrid>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </telerik:RadAjaxPanel>
                </div>
            </div>
            <!-- container -->
        </div>
        <!-- content -->
        <footer class="footer text-right">2015 © Smart Shopping Cart.</footer>
    </div>
    <!-- ============================================================== -->
    <!-- End Right content here -->


  

</asp:Content>